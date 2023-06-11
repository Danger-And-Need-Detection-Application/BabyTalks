import 'package:flutter/material.dart';

class ItemsWeidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // Empêche le GridView de défiler
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
       for(int i=1 ; i<=10 ; i++)
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  // Ajoute l'icône de favori
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  // Navigue vers la page de l'article
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image(
                    // Affiche l'image de l'article en fonction de son numéro
                    image: AssetImage('assets/images/$i.jpg'),
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: const Text(
                  // Affiche le nom de l'article
                  "NOM DE L'ARTICLE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF884A39),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  // Affiche la description de l'article
                  "Écrire la description",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF111111),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
