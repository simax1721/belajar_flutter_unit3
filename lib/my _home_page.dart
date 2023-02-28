import 'package:belajar_flutter_unit3/second_page.dart';
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
      body: ListView(
        children: [
          Container(
            // height: double.infinity,
            height: MediaQuery.of(context).size.width * 1.5,
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
      const SizedBox( height: 10, ),
      SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute( builder: (context) {
                return const SecondPage();
              }),
              );
          }, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login),
              SizedBox(width: 10,),
              Text("Tekan"),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff00ff00),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 2,
            // padding: EdgeInsets.symmetric(
            //   horizontal: 30,
            //   vertical: 25
            // ),
          ),
          ),
      )
      ],) 
    );
  }
}