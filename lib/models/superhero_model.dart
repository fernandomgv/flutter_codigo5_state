class SuperheroModel {
  String name;
  int experience;
  List<String> skills;

  SuperheroModel({
    required this.name,
    required this.skills,
    required this.experience,
  });

  SuperheroModel copyWith({String? newName, int? newExperience, List<String>? newSkills}) {
    return SuperheroModel(
        name: newName ?? name ,
        skills: newSkills ?? skills,
        experience: newExperience ?? experience);
  }
}
