import 'package:agendador_tarefas/components/task.dart';
import 'package:flutter/material.dart';

class Dufficulty extends StatelessWidget {
  const Dufficulty({
    super.key,
    required this.widget,
  });

  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 20,
          color: widget.dificuldade >= 1 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: widget.dificuldade >= 2 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: widget.dificuldade >= 3 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: widget.dificuldade >= 4 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: widget.dificuldade >= 5 ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}
