import 'package:flutter/material.dart';

class BotaoPage extends StatefulWidget {
  const BotaoPage({Key? key}) : super(key: key);

  @override
  _BotaoPageState createState() => _BotaoPageState();
}

class _BotaoPageState extends State<BotaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Add onPressed code here
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {
                  // Add onPressed code here
                },
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {
                  // Add onPressed code here
                },
                child: Text('OutlinedButton'),
              ),
              IconButton(
                onPressed: () {
                  // Add onPressed code here
                },
                icon: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  // Add onPressed code here
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  // Add onPressed code here
                },
                label: Text('FloatingActionButton.extended'),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ));
    ;
  }
}
