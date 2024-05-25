import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigator'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (value) {
          setState(() {
            indice = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.waving_hand,
              color: Colors.green,
            ),
            label: "Faz o 17",
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.pan_tool_alt,
                color: Colors.red,
              ),
              label: "Faz o L"),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Exemplo1(),
          Exemplo2(),
        ],
      ),
    );
  }
}

class Exemplo1 extends StatelessWidget {
  const Exemplo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Align(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  minRadius: 55,
                  backgroundImage: NetworkImage(
                    "https://cdn.conmebol.com/wp-content/uploads/2020/10/neymar_banner_0.jpg",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Seleção do Brasil",
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.yellow,
                            title: Text("Votado com Sucesso"),
                            content: Container(
                              width: 200,
                              height: 210,
                              child: Column(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        "https://media1.giphy.com/media/N71MaH0k9GuPhDJdzr/giphy.gif?cid=6c09b9525kl5bnwx1agz8y27yoamjm83vkek5w26khocgaxx&ep=v1_gifs_search&rid=giphy.gif&ct=gif"),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Obrigado por votar"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text("Votar"),
                ),
              ],
            ),
          ),
        ),
        color: Colors.green,
      ),
    );
  }
}

class Exemplo2 extends StatelessWidget {
  const Exemplo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Align(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  minRadius: 55,
                  backgroundImage: NetworkImage(
                    "https://placar.com.br/wp-content/uploads/2021/09/esporte-futebol-suica-granit-xhaka-20180327-0001-copy.jpg",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Seleção da Suíça",
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Votado com sucesso"),
                            content: Container(
                              width: 200,
                              height: 250,
                              child: Column(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJyP5-T8aRCnFlUvnLJAeTF5EVW_0iCMRb3w_lc7SYoGrcPGoPM5aokYie_uPLWM8mv3m09ST1j3oQMi6IhC-VGSnjUF21VCmP-77DtXWGb39lv9wQJd3Lc_YY_ahNfqNUOoS4oodpxaS/s1600/s4.gif"),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Obrigado por votar"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text("Votar"),
                ),
              ],
            ),
          ),
        ),
        color: Colors.red,
      ),
    );
  }
}
