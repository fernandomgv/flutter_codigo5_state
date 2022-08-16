import 'package:flutter/material.dart';
import 'package:flutter_codigo5_state/models/superhero_model.dart';
import 'package:flutter_codigo5_state/providers/counter_provider.dart';
import 'package:flutter_codigo5_state/providers/superhero_provider.dart';
import 'package:provider/provider.dart';

class RegistePage extends StatelessWidget {
  const RegistePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);
    SuperheroProvider superheroProvider =
    Provider.of<SuperheroProvider>(context);

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
                  name: "Superman",
                  skills: ["Superfuerza", "Volar"],
                  experience: 2000,
                );
                superheroProvider.createSuperhero(superheroModel);
              },
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text("Actualizar experiencia"),
              onPressed: () {
                superheroProvider.updateExperience(52220);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Agregar habilidad"),
              onPressed: () {
                superheroProvider.addSkill("Rayos X");
              },
            ),
          ],
        ),
      ),
    );
  }
}