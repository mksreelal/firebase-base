import 'package:addanddelete/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.red,
                border: !click
                    ? Border.all(
                        width: 10, color: !click ? Colors.green : Colors.blue)
                    : Border.all()),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                click = !click;
              });
            },
            child: Icon(Icons.delete),
          )
        ],
      )),
    );
  }
}
