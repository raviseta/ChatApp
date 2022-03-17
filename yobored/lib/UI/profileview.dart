import 'package:flutter/material.dart';

// ignore: camel_case_types
class profileview extends StatefulWidget {
  const profileview({Key? key}) : super(key: key);

  @override
  State<profileview> createState() => _profileviewState();
}

// ignore: camel_case_types
class _profileviewState extends State<profileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "profileview",
        ),
      ),
    );
  }
}
