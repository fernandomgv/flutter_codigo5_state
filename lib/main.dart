import 'package:flutter/material.dart';
import 'package:flutter_codigo5_state/pages/home_page.dart';
import 'package:flutter_codigo5_state/providers/counter_provider.dart';
import 'package:flutter_codigo5_state/providers/superhero_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => CounterProvider()),
        ChangeNotifierProvider(
            create: (BuildContext context) => SuperheroProvider()),
      ],
      child: MaterialApp(
        title: 'Provider StateApp 2',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
