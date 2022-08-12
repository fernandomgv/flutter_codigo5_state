import 'package:flutter/material.dart';

import '../models/superheroe_model.dart';
import '../services/counter_services.dart';
import '../services/superhero_services.dart';


class RegistePage extends StatefulWidget {
  const RegistePage({Key? key}) : super(key: key);

  @override
  State<RegistePage> createState() => _RegistePageState();
}

class _RegistePageState extends State<RegistePage> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SuperheroService().closeStream();
  }

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
                SuperheroModel superhero = SuperheroModel(
                  name: "Flash",
                  experience: 200,
                  skills: [
                    "Supervelocidad",
                    "Vuelo",
                  ],
                );
                SuperheroService().addSuperhero(superhero);
              },
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text("Actualizar experiencia"),
              onPressed: () {
                SuperheroService().updateExperience(1000);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Agregar habilidad"),
              onPressed: () {
                SuperheroService().addSkill("Millonario");
              },
            ),
          ],
        ),
      ),
    );
  }
}