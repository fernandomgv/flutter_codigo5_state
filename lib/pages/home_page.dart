import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_codigo5_state/models/superheroe_model.dart';
import 'package:flutter_codigo5_state/pages/register_page.dart';

import '../services/counter_services.dart';
import '../services/superhero_services.dart';


class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistePage()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
        ),
        actions: [

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: StreamBuilder(
          stream: SuperheroService().superheroStream,
          builder: (BuildContext context, AsyncSnapshot snap) {
            if(snap.hasData){
              return InfoSuperheroWidget(superheroModel: snap.data,);
            }
            return Text("No hay nada registrado");
          },
        ),
      ),
    );
  }
}





class InfoSuperheroWidget extends StatelessWidget {

  SuperheroModel superheroModel;

  InfoSuperheroWidget({
    required this.superheroModel
});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Información del básica",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(),
        ListTile(
          title: Text(superheroModel.name),
          subtitle: Text("Nombre del personaje"),
        ),
        ListTile(
          title: Text("${superheroModel.experience} años"),
          subtitle: Text("Experiencia"),
        ),
        Divider(),
        Text(
          "Habilidades",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        ...List.generate(superheroModel.skills.length, (index) => ListTile(
          title: Text(superheroModel.skills[index]),
          subtitle: Text("Número: ${index + 1}"),
        )
        )

      ],
    );
  }
}