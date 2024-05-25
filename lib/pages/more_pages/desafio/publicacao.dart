import 'package:flutter/material.dart';

class Publicacao extends StatelessWidget {
  const Publicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            minRadius: 30,
                            backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/510/812/png-transparent-organization-computer-icons-avatar-company-information-profile-miscellaneous-angle-company.png"),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Fulano",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.expand_more_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Image(
                  height: 300,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://w7.pngwing.com/pngs/510/812/png-transparent-organization-computer-icons-avatar-company-information-profile-miscellaneous-angle-company.png",
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.chat_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.send_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Icon(
                              Icons.more_outlined,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Curtidas",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Descrição de pagina que não elaborei logo fiz esse texto enomr sem usar o lorem ipsum pois tenho uma preguiça que trasncende o tempo",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );

  }
}
