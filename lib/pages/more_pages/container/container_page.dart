import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  void dispose() {
    controlador1.dispose();
    controlador2.dispose();
    super.dispose();
  }

  final keyPesca = GlobalKey<FormState>();
  final controlador1 = TextEditingController();
  final controlador2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFFff005b),
        title: const Text('ContainerPage'),
      ),
      body: Form(
          key: keyPesca,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controlador1,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Não pode ser vazio";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    labelText: "Email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 244, 54, 158), width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 244, 54, 158), width: 2.0),
                    ),
                    isDense: false,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: controlador2,
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Não pode ser vazio";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    label: Text("Senha"),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Colors.blue, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 244, 54, 158), width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var result = keyPesca.currentState?.validate() ?? false;
                        var message = "Formulario não pôde ser enviado";
                        if (result) {
                          message = "Formulario enviado";
                        }
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(message),
                              backgroundColor: Color(0xFFff005b)),
                        );
                      },
                      child: Text("Salvar"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0xFFff005b),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                "ValorBotão1: ${controlador1.text}, ValorBotão2: ${controlador2.text}"), 
                                backgroundColor: Colors.blue,
                          ),
                        );
                        controlador1.clear();
                        controlador2.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Colors.blue,
                      ),
                      child: Text("Limpar"),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
