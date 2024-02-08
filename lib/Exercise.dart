
// This class will be used when importing information from database to create
// different exercises which will be stored in the activity log and workout.

class Exercise {
  final String name;
  final String type;
  final String muscle;
  final String equipment;
  final String difficulty;
  final String instructions;
  var weight;
  var sets;
  bool compeleted;

  Exercise({
      required this.name,
      required this.type,
      required this.muscle,
      required this.equipment,
      required this.difficulty,
      required this.instructions,
      this.weight,
      this.sets,
      this.compeleted = false
    });
}