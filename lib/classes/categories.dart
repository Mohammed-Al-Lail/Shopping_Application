class Categorie {


Categorie({ // constructor
  required this.imagePath ,
  required this.title
});

final String imagePath ;
final String title ;


}

List <Categorie> Categories = [

  Categorie(
    imagePath: "lib/images/shoes.jpg",
    title: "Shoes"
  ),

  Categorie(
    imagePath: "lib/images/manFasion.jpg",
    title: "Man's fasion"
  ),

  Categorie(
    imagePath: "lib/images/womenFasion.jpg",
    title: "Women's Fasion"
  ),

  Categorie(
    imagePath: "lib/images/jewelry.jpg",
    title: "Jewelries"
  ),

  Categorie(
    imagePath: "lib/images/beouty.jpg",
    title: "Beouty"
  ),
];