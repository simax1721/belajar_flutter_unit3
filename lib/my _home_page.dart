import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter Unit 3"),
        centerTitle: true,
        backgroundColor: const Color(0xff00ff00),
      ),
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffff00ff),
        child: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
            ),
          // color: Colors.white,
          ),
      ),
    );
  }
}