import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            PopupMenuButton<PopupMenuPages>(
                icon: Icon(Icons.restaurant_menu),
                color: Colors.amber,
                onSelected: (PopupMenuPages valueSelected) {
                  switch (valueSelected) {
                    case PopupMenuPages.container:
                      Navigator.of(context).pushNamed('/container');
                      break;
                    default:
                  }
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<PopupMenuPages>>[
                    const PopupMenuItem(
                        value: PopupMenuPages.container,
                        child: Text('Cardapio'))
                  ];
                })
          ],
        ),
        body: Container());
  }
}
