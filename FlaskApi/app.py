# from flask import Flask

# app = Flask(__name__)

# @app.route('/')
# def index():
#     return "hello, world!"

# if __name__ == "__main__":
#     app.run(debug=True)

import os
import json
import numpy as np
import librosa
import cv2
import tensorflow as tf
from flask import Flask, request, jsonify, send_file
from io import BytesIO
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/api', methods=['GET'])
def predict():
    # Load pre-trained model
    model_path = './model1.h5'
    if not os.path.isfile(model_path):
        return jsonify(error='Model file not found'), 500
    
    # Extract query parameter
    query = request.args.get("query", default=None)
    if query is None:
        return jsonify(error='Query parameter not found'), 400
    

    try:
        with open(query, "rb") as f:
                audio_data = BytesIO(f.read())
    except FileNotFoundError:
        return 'Audio file not found.'



    model = tf.keras.models.load_model(model_path)

    # Define function to extract spectrogram features
    def extract_features(file_path):
        y, sr = librosa.load(file_path, sr=None)

        n_fft = 2048
        hop_length = 256
        n_mels = 128
        mel_spec = librosa.feature.melspectrogram(y=y, sr=sr, n_fft=n_fft, hop_length=hop_length, n_mels=n_mels)
        log_mel_spec = librosa.power_to_db(mel_spec, ref=np.max)
        # Resize spectrogram to (128, 128, 1)
        spectrogram = cv2.resize(log_mel_spec, (128, 128))
        # Add channel dimension
        spectrogram = np.expand_dims(spectrogram, axis=-1)

        return spectrogram

    # Extract spectrogram features for the audio sample
    voice_spec = extract_features(audio_data)

    # Make a prediction on the audio sample
    prediction = model.predict(np.array([voice_spec]))
    predicted_label = np.argmax(prediction)

    # Convert the predicted label to its corresponding category name
    categories = ['belly_pain', 'burping', 'discomfort', 'hungry', 'tired']
    predicted_category = categories[predicted_label]

    # Close the TensorFlow session
    tf.keras.backend.clear_session()

    # Return the predicted category as a JSON object
    return jsonify(output=predicted_category)

if __name__ == '__main__':
    app.run()

# 'C:/Users/cli/Desktop/BABYTALKS/API/0D1AD73E-4C5E-45F3-85C4-9A3CB71E8856-1430742197-1.0-m-04-hu.wav'
# C:/Users/HP/Downloads/donateacry-corpus-master/donateacry-corpus-master/donateacry_corpus_cleaned_and_updated_data/hungry.wav