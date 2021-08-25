import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'decorationtext.dart';

class LogIn extends StatefulWidget {
  @override
  LogInState createState() => LogInState();
}

class LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    String user ;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ), /* add child content here */
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 120, horizontal: 20),
            child: Text(
              "Come Together",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 35, color: Colors.white
                  //foreground: Paint()..shader = linearGradient
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 160, horizontal: 20),
            child: Text(
              "To Learn",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 35, color: Colors.white
                  //foreground: Paint()..shader = linearGradient
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 250, horizontal: 20),
            child: Text(
              "Join Our team",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 20, color: Colors.white
                  //foreground: Paint()..shader = linearGradient
                  ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // width: 20,
                height: 350,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Poppins",
                          foreground: Paint()..shader = linearGradient,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                            user = value;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter your user name'),
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: null,
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter your password'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 350,
                        decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                            colors: [Color(0xff6685D5), Color(0xffFF7189)],
                            begin: FractionalOffset.centerLeft,
                            end: FractionalOffset.centerRight,
                            transform: GradientRotation(3.14 / 4),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            print(user);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(username: user),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
