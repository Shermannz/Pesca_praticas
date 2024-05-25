import 'package:flutter/material.dart';

enum Paginas {
  container,
  stackJson,
  bottomNavigator,
  bottomNavigator2,
  banner,
  instagram,
  quiz_bloc,
  quiz,
  quiz_valueNotifier,
  gauge,
  gauge2,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        actions: [
          PopupMenuButton<Paginas>(
            onSelected: (Paginas value) {
              switch (value) {
                case Paginas.container:
                  Navigator.of(context).pushNamed("/containerPage");
                  break;
                case Paginas.stackJson:
                  Navigator.of(context).pushNamed("/stackJson");
                  break;
                case Paginas.bottomNavigator:
                  Navigator.of(context).pushNamed("/bottomNavigator");
                  break;
                case Paginas.bottomNavigator2:
                  Navigator.of(context).pushNamed("/bottomNavigator2");
                  break;
                case Paginas.banner:
                  Navigator.of(context).pushNamed("/bannerPage");
                  break;
                case Paginas.instagram:
                  Navigator.of(context).pushNamed("/instagram");
                  break;
                case Paginas.quiz_bloc:
                  Navigator.of(context).pushNamed("/quiz_bloc");
                  break;
                case Paginas.quiz:
                  Navigator.of(context).pushNamed("/quiz");
                  break;
                case Paginas.quiz_valueNotifier:
                  Navigator.of(context).pushNamed("/quiz_valueNotifier");
                  break;
                case Paginas.gauge:
                  Navigator.of(context).pushNamed("/gauge");
                  break;
                case Paginas.gauge2:
                  Navigator.of(context).pushNamed("/gauge2");
                  break;
              }
            },
            itemBuilder: (context) => <PopupMenuEntry<Paginas>>[
              PopupMenuItem(
                child: Text("Container"),
                value: Paginas.container,
              ),
              PopupMenuItem(
                child: Text("StackJson"),
                value: Paginas.stackJson,
              ),
              PopupMenuItem(
                child: Text("bottomNavigator"),
                value: Paginas.bottomNavigator,
              ),
              PopupMenuItem(
                child: Text("bottomNavigator2"),
                value: Paginas.bottomNavigator2,
              ),
              PopupMenuItem(
                child: Text("bannerPage"),
                value: Paginas.banner,
              ),
              PopupMenuItem(
                child: Text("instagram"),
                value: Paginas.instagram,
              ),
              PopupMenuItem(
                child: Text("quiz_bloc"),
                value: Paginas.quiz_bloc,
              ),
              PopupMenuItem(
                child: Text("quiz"),
                value: Paginas.quiz,
              ),
              PopupMenuItem(
                child: Text("quiz_valueNotifier"),
                value: Paginas.quiz_valueNotifier,
              ),
              PopupMenuItem(
                child: Text("gauge"),
                value: Paginas.gauge,
              ),
              PopupMenuItem(
                child: Text("gauge2"),
                value: Paginas.gauge2,
              ),
            ],
          ),
        ],
      ),
      body: Container(),
    );
  }
}
