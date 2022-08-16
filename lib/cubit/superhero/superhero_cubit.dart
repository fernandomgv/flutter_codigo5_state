
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo5_state/models/superhero_model.dart';
part 'superhero_state.dart';

class SuperheroCubit extends Cubit<SuperheroState> {

  SuperheroCubit() : super(SuperheroInit());

 // SuperheroCubit(super.initialState);


  createSuperhero(SuperheroModel model){
   // print("create Superhero");
   // print(state);
    emit(SuperheroCreated(superheroModel: model));
  //  print(state);
  }

  updateSuperhero( int exp){

    final SuperheroState currentState = state;
    if(currentState is SuperheroCreated)
      {
        final SuperheroModel newSuperhero = currentState.superheroModel.copyWith(newExperience: exp);
        emit(SuperheroCreated(superheroModel: newSuperhero));
      }
  }

  addSkill( String newSkill){
    final SuperheroState currentState = state;
    if(currentState is SuperheroCreated)
    {
      List<String> currentSkills = currentState.superheroModel.skills;
      currentSkills.add(newSkill);
      final SuperheroModel newSuperhero = currentState.superheroModel.copyWith(newSkills:currentSkills) ;
      emit(SuperheroCreated(superheroModel: newSuperhero));
    }

  }
}