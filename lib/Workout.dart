import 'Exercise.dart';

// This class is used to group the exercises based on their muscle/type of
// exercise. Will mainly be used to recommend exercises based on the type.

class Workout {
  final String name;
  final List<Exercise> exercises;

  Workout({required this.name, required this.exercises});
}