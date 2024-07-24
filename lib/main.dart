import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Tarefas',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter'),
            Task('Andar de bike'),
            Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;

  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: Icon(
                          Icons.arrow_drop_up,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'Nivel $nivel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
