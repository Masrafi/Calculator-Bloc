import 'package:calculator/bloc/calculator_bloc.dart';
import 'package:calculator/repo/claculator_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (_) => CalculatorBloc(calculatorRepo: CalculatorRepo()),
          child: Home()),
    );
  }
}
