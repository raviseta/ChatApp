// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class chatview extends StatefulWidget {
  const chatview({Key? key}) : super(key: key);

  @override
  State<chatview> createState() => _chatviewState();
}

class _chatviewState extends State<chatview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "chatview",
          ),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.grey,
              );
            },
            separatorBuilder: (BuildContext contex, int index) =>
                const Divider(),
            itemCount: 5));
  }
}
