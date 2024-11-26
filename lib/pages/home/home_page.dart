import 'package:flutter/material.dart';

enum PopupMenuPages { container, layoutBuilder, botao }

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
                    case PopupMenuPages.layoutBuilder:
                      Navigator.of(context).pushNamed('/layoutBuilder');
                      break;
                    case PopupMenuPages.botao:
                      Navigator.of(context).pushNamed('/botao');
                      break;

                    default:
                  }
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<PopupMenuPages>>[
                    const PopupMenuItem(
                        value: PopupMenuPages.container,
                        child: Text('Cardapio')),
                    const PopupMenuItem(
                        value: PopupMenuPages.layoutBuilder,
                        child: Text('Layout Builder')),
                    const PopupMenuItem(
                        value: PopupMenuPages.botao, child: Text('Botoes'))
                  ];
                })
          ],
        ),
        body: Container());
  }
}
