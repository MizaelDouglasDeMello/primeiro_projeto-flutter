import 'package:flutter/material.dart';

class ScrollsViewPage extends StatefulWidget {
  const ScrollsViewPage({Key? key}) : super(key: key);

  @override
  _ScrollsViewPageState createState() => _ScrollsViewPageState();
}

class _ScrollsViewPageState extends State<ScrollsViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scrolls View'),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
              subtitle: Text('Subtitle $index'),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ih1.redbubble.net/image.1076687066.0716/st,small,507x507-pad,600x600,f8f8f8.u2.jpg'),
              ),
              trailing: const Icon(Icons.arrow_forward),
            );
          },
        ));
  }
}
