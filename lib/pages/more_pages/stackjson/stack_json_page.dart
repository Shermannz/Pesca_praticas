import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pesca_praticas/pages/more_pages/stackjson/Aluno.dart';

class StackJsonPage extends StatefulWidget {
  const StackJsonPage({Key? key}) : super(key: key);

  @override
  State<StackJsonPage> createState() => _StackJsonPageState();
}

class _StackJsonPageState extends State<StackJsonPage> {
  var aluno = Aluno(nome: "Fulano", escola: "Abc", idade: 15, peso: 60);

  @override
  void initState() {
    super.initState();
    _chamada();
  }

  Future<void> _chamada() async {
    final alunoJson = await rootBundle.loadString("assets/aluno.json");
    setState(() {
      aluno = Aluno.fromJson(alunoJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack Json Page'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Pegando Aluno", style: TextStyle(fontSize: 50)),
                  SizedBox(height: 100,),
                  Text(aluno.nome, style: TextStyle(fontSize: 50)),
                  Text("${aluno.idade}", style: TextStyle(fontSize: 50)),
                  Text(aluno.escola, style: TextStyle(fontSize: 50)),
                  Text("${aluno.peso}", style: TextStyle(fontSize: 50)),
                ],
              ),
            ),
          ),
        ));
  }
}
