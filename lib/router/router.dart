import 'package:flutter/material.dart';
import 'sidemenu.dart';

class RouterView extends StatelessWidget {
  const RouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: const [
          Text(
            'SuperTerm',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text('v1.0.0', style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
