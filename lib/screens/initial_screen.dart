import 'package:agendador_tarefas/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              'Estudar Flutter',
              'assets/images/dash.png',
              5,
            ),
            Task(
              'Andar de Bike',
              'assets/images/bike.webp',
              1,
            ),
            Task(
              'Ler 50 páginas',
              'assets/images/livro.jpg',
              3,
            ),
            Task(
              'Meditar',
              'assets/images/meditar.jpeg',
              5,
            ),
            Task(
              'Jogar',
              'assets/images/jogar.jpg',
              2,
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
