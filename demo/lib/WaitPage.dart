import 'package:flutter/material.dart';

class WaitPage extends StatefulWidget {
  const WaitPage({Key? key}) : super(key: key);

  @override
  State<WaitPage> createState() => _WaitPageState();
}

class _WaitPageState extends State<WaitPage> {
  @override
  void initState() {
    super.initState();
    _navigatetoEmail();
  }

  _navigatetoEmail() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MailPage()));
  }

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.only(top: 0, bottom: 100),
              child: Text("Speak, friend, and enter"),
            ),
            Image.asset(
              'images/wait.jpg',
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}
