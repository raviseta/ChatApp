import 'package:flutter/material.dart';

// ignore: camel_case_types
class cameraView extends StatefulWidget {
  const cameraView({Key? key}) : super(key: key);

  @override
  State<cameraView> createState() => _cameraViewState();
}

// ignore: camel_case_types
class _cameraViewState extends State<cameraView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "cameraview",
        ),
      ),
    );
  }
}
