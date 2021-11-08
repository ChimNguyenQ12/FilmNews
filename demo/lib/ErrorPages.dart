import 'package:demo/LoginPage.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/error.jpg',
              width: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 5),
              child: Text(
                "UPS...couldn't Sign In",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 0,
              ),
              child: Text("Your username and password don't match."),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 100),
              child: Text("Please, try again."),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 190, left: 15, right: 15, bottom: 0),
              child: OutlinedButton(
                child: Text(
                  "TRY AGAIN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(1920, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
