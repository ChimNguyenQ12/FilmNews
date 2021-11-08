import 'package:flutter/material.dart';
import 'package:demo/WaitPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController name = new TextEditingController();
    TextEditingController pass = new TextEditingController();
    return Scaffold(
      backgroundColor: Colors.tealAccent[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/mail.jpg',
              width: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 0),
              child: Text(
                "SignIn",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 80),
              child: Text("Speak, friend, and enter"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: TextField(
                controller: name,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.phone),
                  filled: true,
                  hintText: "Email",
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 0),
              child: TextField(
                controller: pass,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: "Password",
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 0),
              child: OutlinedButton(
                child: Text(
                  "SIGN IN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (name.text.isNotEmpty && pass.text.isNotEmpty) {
                    if (name.text.compareTo(pass.text) == 0) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WaitPage()));
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ErrorPage()));
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Thông báo"),
                          content: Text("Vui lòng nhập đầy đủ thông tin"),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Tắt"))
                          ],
                        );
                      },
                    );
                  }
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
