import 'package:flutter/material.dart';
import 'package:flutter_codigo5_state/cubit/superhero/superhero_cubit.dart';
import 'package:flutter_codigo5_state/models/superhero_model.dart';

import 'package:provider/provider.dart';

class RegistePage extends StatelessWidget {
  const RegistePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.pinkAccent,
              child: Text("Agregar personaje"),
              onPressed: () {
                SuperheroModel superheroModel = SuperheroModel(
                  name: "Flash",
                  skills: ["Supervelocidad", "Resistencia"],
                  experience: 4,
                );

                context.read<SuperheroCubit>().createSuperhero(superheroModel);

              },
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text("Actualizar experiencia"),
              onPressed: () {
                context.read<SuperheroCubit>().updateSuperhero(2000);

              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Agregar habilidad"),
              onPressed: () {
              //  superheroProvider.addSkill("Rayos X");
                context.read<SuperheroCubit>().addSkill("Super inteligencia");
              },
            ),
          ],
        ),
      ),
    );
  }
}