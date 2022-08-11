import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_codigo5_state/pages/register_page.dart';

class HomePage extends StatelessWidget {
  final StreamController<int> _streamController = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage() ));
          _streamController.add(DateTime.now().millisecond);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("StateApp"),
        actions: [
          StreamBuilder(
              stream: _streamController.stream,
              builder: (BuildContext context, AsyncSnapshot snap) {
                if (snap.hasData) {
                  int data = snap.data;
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      data.toString(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                  );
                }
                return SizedBox();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Información del Personaje",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Batman"),
              subtitle: Text("Nombre del personaje"),
            ),
            ListTile(
              title: Text("20 años"),
              subtitle: Text("Experiencia"),
            ),
            Text(
              "Habilidades",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Artes marciales"),
              subtitle: Text("Número 1"),
            ),
            ListTile(
              title: Text("Millonario"),
              subtitle: Text("Número 2"),
            ),
            ListTile(
              title: Text("Detective"),
              subtitle: Text("Número 3"),
            ),
          ],
        ),
      ),
    );
  }
}
