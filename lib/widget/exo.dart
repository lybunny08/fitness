class Exo {
  final String image, title;
  final int  id;
  Exo(
      {required this.id,
      
      required this.title,
      required this.image});
}

List<Exo> exos = [
  Exo(
    image: 'images/back1.jpeg',
    id: 1,
    title: "Back",
   
  ),
  Exo(
    id: 2,
    image: 'images/biceps.jpeg',
    title: "Biceps",
    
  ),
  Exo(
    id: 3,
    image: 'images/triceps1.jpeg',
    title: "Triceps",
    
  ),
  Exo(
    id: 4,
    image: 'images/chest.jpeg',
    title: "Chest",
    
  ),
  Exo(
    id: 5,
    image: 'images/quadriceps.jpeg',
    title: "Quadriceps",
    
  ),
  Exo(
    id: 6,
    image: 'images/quadriceps.jpeg',
    title: "Abs",
    
  ),
];
