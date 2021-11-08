import 'package:flutter/material.dart';

class MailPage extends StatelessWidget {
  const MailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Container content = Container(
      color: Colors.white,
      child: Text(
        "Mailboxes",
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 20),
      ),
      height: 40,
    );
    Container content2 = Container(
      color: Colors.white,
      child: Text(
        "Special folders",
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 20),
      ),
      height: 40,
    );
    Map<String, bool> _Types = {
      'All inboxes': false,
      'Icloud': false,
      'Gmail': false,
      'Hotmail': false,
      'VIP': false,
      'Secure': false,
      'Notifications': false,
    };
    CheckboxListTile Mail_Section(String name, int amount) {
      return CheckboxListTile(
        value: _Types[name],
        onChanged: (bool? value) {
          _Types[name] = value!;
        },
        title: Wrap(
          spacing: 12,
          children: [Icon(Icons.mail), Text(name)],
        ),
        secondary: Text(amount.toString()),
        controlAffinity: ListTileControlAffinity.leading,
      );
    }

    List<String> text = ['All inboxes', 'Icloud'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              child: Text("Done", style: TextStyle(fontSize: 15)),
            ),
          )
        ],
        centerTitle: true,
        title: Text(
          "Mailboxes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: ListTile.divideTiles(context: context, tiles: [
          content,
          Mail_Section('All inboxes', 10),
          Mail_Section('Icloud', 10),
          Mail_Section('Gmail', 10),
          Mail_Section('Hotmail', 10),
          Mail_Section('VIP', 10),
          content2,
          Mail_Section('Secure', 10),
          Mail_Section('Notifications', 10),
        ]).toList(),
      ),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.blue, width: 2),
          ),
        ),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.grey,
            primary: Colors.black,
          ),
          child: ListTile(
            title: Center(
              child: Text(
                "Update just now",
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Icon(Icons.upgrade_rounded),
          ),
        ),
      ),
    );
  }
}
