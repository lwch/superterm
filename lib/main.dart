import 'package:flutter/material.dart';
import 'router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SuperTerm',
        home: Scaffold(
          body: Row(children: [
            const Expanded(flex: 1, child: RouterView()),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.red,
                ))
          ]),
        ));
  }
}
