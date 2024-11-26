import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(left: 20, bottom: 50),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      offset: Offset(-10, -10))
                ])),
      ),
    );
  }
}
