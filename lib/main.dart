import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
import 'home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider( //Ini widget dari package provider yang berfungsi: menyediakan object state ke seluruh widget di bawahnya
// artinya semua semua widget di dalam bisa mengakses Countermodel MyApp
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}