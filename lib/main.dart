import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao/botao_page.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/home/home_page.dart';
import 'package:primeiro_projeto/pages/layout_builder_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: false, //!kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/layoutBuilder': (_) => LayoutBuilderPage(),
        '/botao': (_) => BotaoPage(),
      },
    );
  }
}
