import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spp/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}

class splash extends StatefulWidget {
  splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Spash Screen'),
              SizedBox(height: 30),
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2CVvoI7fD6S2pVS4jsK3AZlQ9T-6ZAzo8QA&usqp=CAU')
            ],
          ),
        ),
      ),
    );
  }
}
