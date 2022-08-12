import 'dart:async';

import 'package:flutter_codigo5_state/models/superheroe_model.dart';


class SuperheroService{

  static final SuperheroService _intance = SuperheroService._();

  SuperheroService._();

  factory SuperheroService(){
    return _intance;
  }

  SuperheroModel? _superheroModel;
  final StreamController<SuperheroModel> _superheroStreamController = StreamController.broadcast();
  Stream<SuperheroModel> get superheroStream => _superheroStreamController.stream;

  addSuperhero(SuperheroModel superheroModel){
    _superheroModel = superheroModel;
    _superheroStreamController.add(_superheroModel!);
  }

  updateExperience(int experience){
    _superheroModel!.experience = experience;
    _superheroStreamController.add(_superheroModel!);
  }

  addSkill(String skill){
    _superheroModel!.skills.add(skill);
    _superheroStreamController.add(_superheroModel!);
  }


  closeStream(){
    _superheroStreamController.close();
  }

}

// final superheroService = _SuperheroService();