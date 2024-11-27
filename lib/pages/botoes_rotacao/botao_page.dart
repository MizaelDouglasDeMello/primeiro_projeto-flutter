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
              RotatedBox(
                  quarterTurns: -1,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        maximumSize: const Size(200, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text("RotatedBox"),
                  )),
              ElevatedButton(
                onPressed: () {
                  // Add onPressed code here
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
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
              GestureDetector(
                onTap: () {
                  print("GestureDetector clicado");
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('GestureDetector'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    print("InkWell clicado");
                  },
                  child: Text('InkWell'),
                ),
              )
            ],
          ),
        ));
    ;
  }
}
