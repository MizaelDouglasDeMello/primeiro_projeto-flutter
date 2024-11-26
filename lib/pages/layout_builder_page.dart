import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderPage> createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Layout Builder"),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Row(
              children: [
                Container(
                  width: constraints.maxWidth * 0.5,
                  height: constraints.maxHeight * 0.5,
                  color: Colors.red,
                  child: Center(child: const Text("Layout Builder")),
                ),
                Container(
                  width: constraints.maxWidth * 0.5,
                  height: constraints.maxHeight * 0.5,
                  color: Colors.blue,
                  child: Center(child: const Text("Layout Builder")),
                ),
              ],
            ),
          );
        }));
  }
}
