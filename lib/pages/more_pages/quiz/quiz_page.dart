import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int pergunta = 0;
  int opcao1 = 0;
  int opcao2 = 0;
  String resultado = "";
  List<String> teste = [
    "Você gosta de futebol?",
    "Você gosta de feijoada?",
    "Você gosta de uma balada?",
    "Resultado:",
  ];

  Future<void> _resultados() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      if (pergunta == teste.length - 1) {
        resultado = opcao1 > opcao2 ? "é brasileiro" : "nao é brasileiro";
      }
    });
  }

  void _calcular() {
    setState(
      () {
        if (pergunta < teste.length - 1) {
          pergunta++;
          _resultados();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz teste'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            teste[pergunta],
            style: TextStyle(fontSize: 30),
          ),
          Text(
            resultado,
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  opcao1++;
                  _calcular();
                },
                child: Text("Sim"),
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 70)),
              ),
              ElevatedButton(
                onPressed: () {
                  opcao2++;
                  _calcular();
                },
                child: Text("Não"),
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 70)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    pergunta = 0;
                    opcao1 = 0;
                    opcao2 = 0;
                    resultado = "";
                  });
                },
                child: Text("Reiniciar"),
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 70)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
