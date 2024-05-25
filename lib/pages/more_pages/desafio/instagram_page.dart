import 'package:flutter/material.dart';
import 'package:pesca_praticas/pages/more_pages/desafio/publicacao.dart';
import 'package:pesca_praticas/pages/more_pages/desafio/rotatoria.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image(
          width: 100,
          image: NetworkImage(
            "https://image.similarpng.com/thumbnail/2020/06/Instagram-name-logo-clipart-PNG.png",
          ),
        ),
        actions: const [
          // arrumar depois a distancia de um pro outro
          Icon(Icons.add_box_outlined),
          SizedBox(width: 10),
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 10),
          Icon(Icons.chat_outlined),
          SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {}, items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.house,
            color: Colors.white,
          ),
          label: "Selecionado",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.video_settings,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.badge,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/510/812/png-transparent-organization-computer-icons-avatar-company-information-profile-miscellaneous-angle-company.png")),
            label: ""),
      ]),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Rotatoria(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .64,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Publicacao(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * .74,
//       child: ListView.builder(
//         itemCount: 10,
//         itemBuilder: (BuildContext context, int index) {
//           return 