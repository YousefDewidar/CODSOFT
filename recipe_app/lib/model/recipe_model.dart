class Recipe {
  final String name, img, description, instructions;
  final bool isActive;
  final Map<String,int> ingredients; 

  Recipe({
    required this.name,
    required this.img,
    required this.description,
    required this.ingredients,
    required this.instructions,
    this.isActive = false,
  });
}
