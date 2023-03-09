import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          title: Text('Home Screen',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: 300,
            height: 100,
            // color: Colors.black,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Text(
                textAlign: TextAlign.center,
                "Welcome to Admere, Get What You Deserve",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ));
  }
}
