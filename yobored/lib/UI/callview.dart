import 'package:flutter/material.dart';

// ignore: camel_case_types
class callview extends StatefulWidget {
  const callview({Key? key}) : super(key: key);

  @override
  State<callview> createState() => _callviewState();
}

// ignore: camel_case_types
class _callviewState extends State<callview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "callview",
        ),
      ),
    );
  }
}
