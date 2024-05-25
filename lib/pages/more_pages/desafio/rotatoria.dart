import 'package:flutter/material.dart';

class Rotatoria extends StatelessWidget {
  const Rotatoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .21 - kToolbarHeight - MediaQuery.of(context).padding.top,
      color: Colors.black,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color.fromARGB(255, 151, 39, 31),
                        Color.fromARGB(255, 172, 23, 192),
                        Color.fromARGB(255, 23, 33, 172),
                      ],
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(7),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://st2.depositphotos.com/9998432/48435/v/1600/depositphotos_484354132-stock-illustration-default-avatar-photo-placeholder-grey.jpg",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Fulana",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
