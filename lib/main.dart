import 'package:agendador_tarefas/data/task_inherited.dart';
import 'package:agendador_tarefas/screens/form_screen.dart';
import 'package:flutter/material.dart';
import 'screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Tarefas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: TaskInherited(child: const InitialScreen(),),
    );
  }
}
