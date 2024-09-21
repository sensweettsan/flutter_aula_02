import 'package:flutter/material.dart';

import 'Pages/Peso_ideal_page.dart';

void main() {
  runApp(const AppPage());
}

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter demo",
      home: PesoIdealPage(),
    );
  }
}
