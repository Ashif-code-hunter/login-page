import 'package:flutter/material.dart';
class Home extends StatelessWidget {
final String username;
Home({this.username});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(

          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ), /* add child content here */
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/geany.png"),

                ),
              ), /* add child content here */
            ),
          ],
        )
      ),
    );
  }
}
