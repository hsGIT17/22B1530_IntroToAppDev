import 'package:flutter/material.dart';
import 'package:assignement2_22b1530/utility/routes.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Budget Tracker", textAlign: TextAlign.end),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/home.png",
                  alignment: Alignment.topRight),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.pagetwoRoute);
                },
                child: Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome back <3",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [BoxShadow(blurRadius: 20)]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
