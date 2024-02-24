class UserProfile {
    final String? uid;
    final String firstName;
    final String lastName;
    final Array<String> exercises;
    final Number age;
    final Number height;
    final Number weight;
    final Number waterDrank;
    final Number hoursSlept;
    final Number lifestyleScore;

    UserProfile({
        this.uid,
        required this.firstName,
        required this.lastName,
        required this.age,
        required this.height,
        required this.weight,
        required this.waterDrank,
        required this.hoursSlept,
    });
}