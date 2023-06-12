import 'package:flutter/material.dart';
import 'package:babytalk/pages/ItemPage.dart';

class ItemsWeidget extends StatelessWidget {
  final List<Article> articles = [
    Article(
      image: 'assets/images/1.jpg',
      title: 'Pleurs de mon enfant',
      description:
          'Les cris sont le moyen d’expression de votre bébé, ils lui permettent de vous alerter et de vous faire venir auprès de lui. Les pleurs expriment une demande : désarroi d’être seul dans son berceau, mal au ventre ou coliques, faim, inconfort à cause de la chaleur, etc. Ils sont un moyen pour votre enfant d’attendre une réponse, et la principale réponse sont vos bras.Lorsque votre bébé s’éveille, il cherche un contact, il a toujours besoin d’être entouré. En effet, à la naissance, votre enfant n’apprécie pas la solitude, il éprouve un grand besoin de contact physique. Rappelez-vous que votre bébé a été bercé en continu pendant votre grossesse. Vous devez être très proche de votre bébé, « collée à lui » pendant ses premières semaines puis encore les premiers mois de vie (vous au début puis la personne qui se substitue à vous : nounou…).La nuit, il est recommandé que vous placiez son berceau près de votre lit pour répondre à ses besoins plus rapidement. Au fil du temps, vous arriverez plus facilement à « décoder » ses pleurs.Durant les quatre premiers mois, il est préférable que la réponse aux pleurs de votre nouveau-né soit rapide. N’hésitez pas à prendre votre bébé dans vos bras, il en a besoin, sauf s’il pleure tout en dormant. Dans ce cas, ne le réveillez pas, il s’agit d’une phase normale de sommeil dit « agité ».C’est d’abord le contact et le bercement qui calme un enfant, la chaleur du corps de sa maman, sa voix . S’il n’a pas faim, il est possible qu’il ait simplement besoin de ce câlin. Il se peut aussi qu’il souffre de petits troubles digestifs, ces maux de ventre sont fréquents chez le nourrisson. Posez votre enfant à plat ventre sur votre avant-bras et votre avant-bras sur vos genoux. Si ses pleurs s’apaisent, ce peut être le signe que votre petit avait mal au ventre. Parlez-en à votre médecin, il saura trouver une solution pour le soulager.Les principales causes de pleurs sont le besoin de contact et le besoin d’être nourri. Vous apprendrez à reconnaître ses demandes et ses besoins.Si votre bébé crie en tétant, Il est possible, également, qu’il présente un réflexe gastro-colique. Il tète et avale trop de lait, trop rapidement, sans évacuer d’air sous forme de rots, ce qui déclenche des mouvements trop rapides et brusques de l’intestin. Cette activation de son intestin est douloureuse pour lui et le gêne pour terminer son repas. Pour l’aider, faites en sorte que votre bébé se nourrisse plus tranquillement, en faisant des pauses pour faciliter les rots pendant la tétée ou le biberon. Vous pouvez, par exemple, le changer au milieu du repas. S’il est au biberon, essayez un lait « épaissi » : il tétera plus lentement. Cela lui permettra d’être plus détendu, moins ballonné. Quand il est allaité, il arrive parfois que le flux de lait soit trop fort et trop rapide (réflexe d’éjection fort). Il convient alors de laisser s’écouler ce premier jet (voire de l’extraire) puis de mettre le bébé au sein après ce flux.Il peut souffrir de reflux gastro-œsophagien, parfois visible sous forme de régurgitations, parfois non visibles si le liquide qui reflue de l‘estomac ne remonte pas jusqu’à la bouche. Il faudra donner la tétée ou le biberon tranquillement avec des pauses, en facilitant les rots. Il ne faudra pas serrer la couche et éviter les vêtements comportant une ceinture ou un élastique à la taille. La tête du lit peut être légèrement surélevée. Si votre bébé est nourri au biberon, votre médecin pourra vous conseiller un lait « épaissi » ou « anti-régurgitations » (AR) pour limiter ces reflux. Parfois des médicaments sont nécessaires.Votre enfant peut aussi souffrir d’une mauvaise digestion du lactose. Vous pourrez le remarquer s’il présente, 20 à 30 minutes après le biberon, des gaz, des selles acides et liquides, parfois responsables d’érythème fessier (votre bébé a les fesses rouges). Dans ce cas, parlez en à votre médecin qui peut vous proposer un autre type de lait, pauvre en lactose.Enfin, il se peut que votre nouveau-né pleure en raison d’une petite angoisse. Il arrive que la relation entre vous et votre bébé prenne parfois du temps pour se mettre en place, c’est une difficulté de compréhension. Il vous faut le temps de trouver un rythme commun, d’autant plus que vous êtes fatiguée après l’accouchement. Pas d’inquiétude, n’hésitez pas à en parler à votre médecin.Enfin, il existe un autre type de pleurs, les pleurs du soir ou pleurs de décharge qui commencent vers la fin du premier mois, atteignent souvent leur maximum vers un mois et demi et s’atténuent le plus souvent progressivement à la fin du premier trimestre.',
    ),
    Article(
      image: 'assets/images/2.jpg',
      title: 'Le rythme de sommeil de\nmon bébé',
      description:
          'L’organisation du sommeil est définie selon les âges, même si elle varie selon les besoins et caractères de chaque personne. On peut observer des cycles précis de sommeil, composés de plusieurs stades. Entre les cycles, votre enfant connaît des périodes de réveil. Au cours des toutes premières semaines de vie, votre bébé dort par périodes de 3-4 heures d’affilées interrompues par un éveil. Ces éveils spontanés sont mis à profit pour nourrir le bébé. On qualifie ce rythme de « ultradien », c’est-à-dire que les éveils ont lieu plusieurs fois par jour et non selon le rythme jour/nuit. Mais votre enfant a aussi un très court éveil à chaque changement de cycle, soit au bout d’environ une heure de sommeil. Si vous faites l’effort de ne pas le prendre trop vite dans les bras, s’il n’a pas besoin d’être nourri et s’il ne crie pas, il saura mieux, plus tard, se rendormir seul (c’est-à-dire sans être systématiquement nourri ou bercé) et il enchaînera alors un autre cycle de sommeil. Ces très courts éveils sont normaux. Les cycles s’allongent au fur et à mesure de la croissance de votre bébé. De la naissance à 2 mois, les cycles de sommeil sont courts, environ 50 minutes et composés de deux stades, le sommeil agité et le sommeil calme. De 2 à 6 mois, les périodes de sommeil sont un peu plus longues, le cycle reste court aux environ de 60 minutes et comporte trois stades, comme chez le grand enfant et l’adulte c’est-à-dire : un stade de sommeil lent léger, un stade de sommeil lent profond et un stade de sommeil agité ou paradoxal. Entre les cycles, votre bébé aura une courte période d’éveil. Après 6 mois, ses périodes de sommeil seront plus longues, il pourra manger moins souvent et apprendra peu à peu à faire ses nuits. C’est environ vers 4 mois que commencent à se mettre en place des nuits complètes, très progressivement. Le sommeil est toutefois très différent selon les bébés, et de nombreux facteurs peuvent empêcher votre enfant de dormir : type de caractère, réaction aux bruits… Petit train du sommeil de la naissance à 2 mois - Infographie mpedia',
    ),
    Article(
      image: 'assets/images/3.jpg',
      title: 'A quelle heure coucher\nbébé ?',
      description:
          'Il est tout à fait habituel et même souhaitable qu’un nourrisson fasse une sieste en fin d’après midi quand il en a fait une en début d’après midi. 21 heure voire 20h pour l’heure du coucher semble une heure tout à fait correcte même s’il a dormi un peu à 18h.En revanche, s’il devient grognon, se frotte les yeux… n’hésitez pas à le coucher à ce moment là. A vous de juger quand il est fatigué.A 7 mois il s’endort vers 22h, est-ce trop tard ?Effectivement 22h paraît tard mais tout dépend bien sûr de combien il a dormi dans la journée. Si vraiment vous avez l’impression qu’il n’a pas du tout sommeil, il est difficile de l’obliger à dormir…S’il est calme et tranquille avec vous à cette heure-là, ne le couchez pas et attendez qu’il soit agacé et manifeste des signes de sommeil. Essayez de faire en sorte que la dernière sieste de fin d’après midi ne soit pas trop longue.Le matin réveillez-le à heure quasiment fixe pour ne pas tout décaler dans la journée.',
    ),
    Article(
      image: 'assets/images/4.jpg',
      title: 'Le lait, pilier de \nl’alimentation',
      description:
          'A partir de 4/6 mois,\nle lait maternel ou le lait 1er âge ne couvrent plus la totalité des besoins nutritionnels de l’enfant: il risque en particulier un manque d’apport en fer. C’est à ce moment que débute la diversification alimentaire (L’allaitement maternel exclusif est recommandé jusqu’à 6 mois par l’OMS pour tous les enfants de tous les pays mais la diversification est actuellement proposée, en France, un peu plus tôt pour limiter le risque d’allergies, et ne doit pas être retardée au-delà de 6 mois en raison du risque de carence en fer et de l’insuffisance d’apport énergétique).Besoins nutritionnelsEn rapport avec son poids,\nà 6 mois, un bébé a besoin de 7 fois plus de fer qu’un adulte, 5 fois plus de calcium, 4 fois plus de vitamines C. Il a en revanche besoin de 4 fois moins de sel. Sa nourriture devra être adaptée aux besoins de cet âge. Chaque nutriment est important pour sa croissance. Il ne va pas abandonner le lait du jour au lendemain, mais la diversification alimentaire va lui permettre de découvrir peu à peu les éléments nutritionnels nécessaires, complémentaires du lait.La consommation de lait et/ou produits laitiers permet de couvrir les besoins en calcium, une partie des besoins en protéines (en plus de celles apportées par les protéines d’origine animale et végétale), en lipides et en fer (les laits 2eâge et de croissance apportent des quantités importantes de fer, contrairement au lait de vache) Quantités de lait conseilléesEntre 4 et 6 mois, un bébé consomme en moyenne entre 500 et 800 ml de lait (maternel ou infantile). Puis une partie de cet apport lacté sera remplacé par les laitages.',
    ),
    Article(
      image: 'assets/images/5.jpg',
      title: 'Comment préparer \nun biberon ?',
      description:
          'Etape 1 : Bien se laver les mains  :\nLavez-vous soigneusement les mains à l’eau et au savon avant de préparer le biberon. Vous pouvez aussi utiliser une solution hydro-alcoolique certifiée. Ces solutions ont fait la preuve de leur efficacité. Installez-vous ensuite dans un endroit propre et vérifiez que les biberons, tétines et ustensiles que vous utilisez sont bien propres eux aussi. En respectant ces règles d’hygiène, vous évitez la transmission de microbes à votre bébé Infographie Etapes Preparer Biberon.\nEtape 2 : Remplir correctement la mesurette de lait Une mesurette est contenue dans chaque boîte de lait\nNe bombez pas les doses et ne tassez pas la poudre dans la mesurette à l’aide d’une cuillère car les quantités seront faussées. Plongez la mesurette dans la boîte de lait et passez simplement le dos d’une lame de couteau au ras de la mesurette pour enlever le surplus de poudre (ne le faites pas avec votre doigt car vous risquez de contaminer le lait avec des bactéries). Certaines boites disposent d’un rebord qui permet d’araser la mesurette remplie. Utilisez exclusivement la mesurette contenue dans la boîte, et n’utilisez pas la mesurette d’une autre marque.\nEtape 3 : Mélanger eau et lait en poudre :\nComptez une mesurette rase de lait en poudre dans 30 ml d’eau. Sur les boîtes de lait, vous trouverez le volume d’eau et le nombre de mesurettes indiquées selon l’âge de votre bébé. Après les tout premiers jours de vie, les bébés vont prendre en moyenne 6 à 8 biberons de 90 ml de lait par 24 heures. Vers 2 mois, ils vont boire environ 5 biberons de 150 ml de lait par 24 heures. Retenez bien qu’il ne s’agit-là que de moyennes à adapter à l’appétit et au poids de votre bébé. Selon la règle d’Appert, le volume quotidien de lait que l’on peut conseiller est égal au 1/10e du poids en grammes + 200 à 250 ml. Mais cette dose peut s’avérer excessive pour certains bébés ou insuffisante pour d’autres: il faut donc l’adapter en fonctions des besoins apparents de l’enfant et de sa courbe de poids, et ne pas être trop rigide. Lorsque la poudre de lait a été mise dans le biberon d’eau, il faut agiter celui-ci pour éviter la formation de grumeaux. Il ne faut pas préparer un biberon à l’avance. Il est possible de conserver un biberon d’eau légèrement chauffée dans un étui prévu à cet effet mais la poudre de lait ne devra être ajoutée qu’au dernier moment.\nEtape 4 Donner le biberon légèrement chauffé :\nIl est actuellement conseillé de chauffer légèrement le lait dans un chauffe-biberon ou sous le robinet d’eau chaude pour être donné aux alentours de 37°, comme le lait maternel. Il semble que la digestion en soit facilitée et les régurgitations soient moins fréquentes. Il est déconseillé de trop chauffer le biberon car certains composants du lait comme les probiotiques ou les vitamines vont perdre leurs qualités. L’utilisation du micro-ondes est vivement déconseillée en raison du risque de brûlures et d’altérations de certains composants du lait. La bonne température du lait sera vérifiée, après agitation du biberon en faisant couler quelques gouttes sur le dos de votre main, ou en plaçant le biberon contre votre cou.Cependant, si le chauffage du lait n’est pas possible, le lait peut être bu à température ambiante, surtout en été. Ne forcez pas votre bébé à boire tout son biberon s’il ne le veut pas. Un bébé a plus ou moins d’appétit selon les jours et les heures. Il peut laisser la moitié d’un biberon à un repas et réclamer un supplément au suivant… Laissez-le manger selon ses besoins.\nEtape 5  Jeter le lait non consommé :\nUn biberon préparé ne se garde pas plus d’une heure : il est donc inutile et totalement déconseillé de mettre de côté la fin du biberon (même au réfrigérateur) pour la tétée suivante. Jetez le reste de lait. Quant à la boîte de lait, une fois ouverte, elle se conserve environ 1 mois, bien refermée, dans un endroit propre, frais et sec.Etape 6 : Laver biberons et tétines : Après utilisation, nettoyez le biberon avec un écouvillon (brosse allongée) à l’eau additionnée de liquide vaisselle. Faites de même avec les tétines et les bagues puis rincez abondamment le tout. Le séchage doit se faire à l’air, sans utiliser de torchon, puis on rangera biberons et tétines dans un endroit propre. Le biberon doit être lavé dès qu’il a été bu, sans attendre, car les bactéries vont se multiplier rapidement dans les résidus de lait. L’écouvillon doit être lavé et rincé après chaque utilisation. Le lave-vaisselle est aussi une bonne solution, surtout avec un programme au-delà de 65°, à condition de rincer les biberons avant de les placer dans le lave-vaisselle.La stérilisation n’est pas obligatoire, mais elle peut être réalisée pendant les premiers mois, soit avec un appareil électrique, soit dans le four à micro-ondes, soit en faisant bouillir dans de l’eau. L’utilisation du lave-vaisselle dispense de la stérilisation.',
    ),
    Article(
      image: 'assets/images/6.jpg',
      title: 'Quel lait infantile choisir?',
      description:
          'Les laits 1er âge sont destinés à l’alimentation des enfants de la naissance jusqu’à la diversification alimentaire, soit de 0 à 4-6 mois. Il existe une réglementation très spécifique pour les laits 1er âge, avec en particulier l’impossibilité de communiquer ou de faire de la publicité pour ces derniers afin de ne pas concurrencer l’allaitement maternel.Une réglementation européenne spécifie les différentes obligations de composition des préparations pour nourrissons et de suite (laits 1er et 2e âges). Un nouveau règlement délégué (2016/127 du 25 septembre 2015) est entré en vigueur le 22 février 2020[1].Les laits 1er âge sont élaborés pour répondre, à eux seuls, aux besoins nutritionnels des bébés pendant les premiers mois de leur vie jusqu’à l’introduction d’une alimentation complémentaire appropriée. Il est recommandé de demander conseil à votre médecin avant d’utiliser un lait 1er âge. En effet, l’offre est abondante : il existe 96 références sur le marché français de laits 1er âge standard (hors laits thérapeutiques). (www.laits.fr).',
    )
    // Add more articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [

        for (int i = 0; i < articles.length; i++)
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
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemPage(
                          image: articles[i].image,
                          title: articles[i].title,
                          description: articles[i].description,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(articles[i].image),
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    articles[i].title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4C53A5),
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

class Article {
  final String image;
  final String title;
  final String description;

  Article({
    required this.image,
    required this.title,
    required this.description,
  });
}
