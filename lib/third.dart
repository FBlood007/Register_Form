import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {

  //const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'User Name : ${data["uName"]}',style: const TextStyle(
                fontSize: 30,
              ),
              ),
              Text(
                'Email id : ${data["email"]}',style: const TextStyle(
                fontSize: 30,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}