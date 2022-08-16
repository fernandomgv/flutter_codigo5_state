import 'package:flutter/material.dart';
import 'package:flutter_codigo5_state/models/superhero_model.dart';

class SuperheroProvider extends ChangeNotifier{

  SuperheroModel? _superheroModel;

  SuperheroModel? get superhero => _superheroModel;

  createSuperhero(SuperheroModel superheroModel){
    _superheroModel = superheroModel;
    notifyListeners();
  }

  updateExperience(int experience){
    _superheroModel!.experience = experience;
    notifyListeners();
  }

  addSkill(String skill){
    _superheroModel!.skills.add(skill);
    notifyListeners();
  }


}