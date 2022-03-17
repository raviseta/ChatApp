import 'package:flutter/material.dart';

// ignore: camel_case_types
class settinngsView extends StatefulWidget {
  const settinngsView({Key? key}) : super(key: key);

  @override
  State<settinngsView> createState() => _settinngsViewState();
}

// ignore: camel_case_types
class _settinngsViewState extends State<settinngsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "settings",
        ),
      ),
    );
  }
}
