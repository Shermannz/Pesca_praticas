import 'package:flutter/material.dart';

class QuizvalueNotifier extends StatefulWidget {
  const QuizvalueNotifier({super.key});

  @override
  State<QuizvalueNotifier> createState() => _QuizvalueNotifierState();
}

class _QuizvalueNotifierState extends State<QuizvalueNotifier> {
  final pergunta = ValueNotifier<int>(0);
  final resultado = ValueNotifier<String>("");
  int opcao1 = 0;
  int opcao2 = 0;
  List<String> teste = [
    "Você gosta de futebol?",
    "Você gosta de feijoada?",
    "Você gosta de uma balada?",
    "Resultado:",
  ];

  Future<void> _resultados() async {
    await Future.delayed(Duration(seconds: 2));
    if (pergunta.value == teste.length - 1) {
      resultado.value = opcao1 > opcao2 ? "é brasileiro" : "nao é brasileiro";
    }
  }

  void _calcular() {
    if (pergunta.value < teste.length - 1) {
      pergunta.value++;
      _resultados();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizvalueNotifier'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder<int>(
            valueListenable: pergunta,
            builder: (_, value, __) {
              return Text(
                teste[value],
                style: TextStyle(fontSize: 30),
              );
            },
          ),
          ValueListenableBuilder<String>(
            valueListenable: resultado,
            builder: (_, value, __) {
              return Text(
                value,
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
                    pergunta.value = 0;
                    opcao1 = 0;
                    opcao2 = 0;
                    resultado.value = "";
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
