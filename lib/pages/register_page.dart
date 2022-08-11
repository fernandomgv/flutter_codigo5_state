
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                onPressed: (){}
            ),
            MaterialButton(
                color: Colors.purpleAccent,
                child: Text("Actualizar experiencia"),
                onPressed: (){}
            ),
            MaterialButton(
                color: Colors.greenAccent,
                child: Text("Agregar habilidad"),
                onPressed: (){}
            ),
          ],
        ),
      ),
    );
  }
}
