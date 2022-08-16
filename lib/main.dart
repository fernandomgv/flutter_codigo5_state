import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo5_state/pages/home_page.dart';

import 'package:provider/provider.dart';

import 'cubit/superhero/superhero_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => SuperheroCubit()),
      ],
      child: MaterialApp(
        title: 'Provider StateApp 2',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
