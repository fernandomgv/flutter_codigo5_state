import 'package:flutter/material.dart';




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

              },
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text("Actualizar experiencia"),
              onPressed: () {

              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Agregar habilidad"),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}