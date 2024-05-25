import 'package:flutter/material.dart';
import 'package:pesca_praticas/pages/more_pages/quiz/bloc_base.dart';
import 'package:pesca_praticas/pages/more_pages/quiz/bloc_quiz.dart';

class QuizBloc extends StatefulWidget {
  const QuizBloc({super.key});

  @override
  State<QuizBloc> createState() => _QuizBlocState();
}

class _QuizBlocState extends State<QuizBloc> {
  final controller = BlocQuiz();
  List<String> teste = [
    "Você gosta de futebol?",
    "Você gosta de feijoada?",
    "Você gosta de uma balada?",
    "Resultado:",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizBloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<BlocBase>(
            stream: controller.streamOut,
            builder: (context, snapshot) {
              int total = snapshot.data?.quantidade ?? 0;
              return Text(
                teste[total],
                style: TextStyle(fontSize: 30),
              );
            },
          ),
          StreamBuilder<BlocBase>(
            stream: controller.streamOut,
            builder: (context, snapshot) {
              String total = snapshot.data?.resultado ?? "";
              return Text(
                total,
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.ebrasileiro();
                  controller.pegandoValores(teste);
                },
                child: Text("Sim"),
                style: ElevatedButton.styleFrom(minimumSize: Size(150, 70)),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.naoebrasileiro();
                  controller.pegandoValores(teste);
                },
                child: Text("Não"),
                style: ElevatedButton.styleFrom(minimumSize: Size(150, 70)),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     controller.clear();
              //   },
              //   child: Text("Reiniciar"),
              //   style: ElevatedButton.styleFrom(minimumSize: Size(150, 70)),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
