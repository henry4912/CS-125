import 'Exercise.dart';

// This class is to save the data of the different workouts the user has
// done within a day.

class Activity_Log {
  final String date;
  final List<Exercise> exercises;

  Activity_Log({required this.date, required this.exercises});
}