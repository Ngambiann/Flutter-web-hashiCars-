import 'package:flutter/material.dart';

import 'package:hashicars/app_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: "Hashi Cars",
      debugShowCheckedModeBanner: false,
      home: Appbar(),
        );
  }
}
