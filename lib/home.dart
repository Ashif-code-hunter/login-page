import 'package:flutter/material.dart';
class Home extends StatelessWidget {
final String username;
Home({this.username});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("............HOME PAGE.............",style: TextStyle(
            color: Colors.black,
          ),),
        ),
      ),
    );
  }
}
