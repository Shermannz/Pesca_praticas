import 'package:flutter/material.dart';

class BottomNavigatorPage2 extends StatefulWidget {
  const BottomNavigatorPage2({super.key});

  @override
  State<BottomNavigatorPage2> createState() => _BottomNavigatorPage2State();
}

class _BottomNavigatorPage2State extends State<BottomNavigatorPage2> {
  String texto = "Texto Inicial";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alterar Texto'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(texto),
          ElevatedButton(
            onPressed: () {
              setState(() {
                texto = "ALTERADO";
              });
            },
            child: Text("Pressione"),
          ),
        ]),
      ),
    );
  }
}
