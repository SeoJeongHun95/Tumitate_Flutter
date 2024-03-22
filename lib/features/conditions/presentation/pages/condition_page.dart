import 'package:flutter/material.dart';

class ConditionPage extends StatelessWidget {
  const ConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("つみたて状況"),
      ),
      body: SafeArea(child: Container()),
    );
  }
}
