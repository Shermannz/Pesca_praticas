import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: Text("Insira fulano e ciclano"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of  (context).hideCurrentMaterialBanner();
                        },
                        child: Text("Cancelar"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Banner"),
            ),
          ],
        ),
      ),
    );
  }
}
