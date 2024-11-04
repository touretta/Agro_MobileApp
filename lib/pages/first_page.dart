// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      drawer: Drawer(backgroundColor: Colors.deepPurple,
      child: Column(children: [DrawerHeader(child: Icon(Icons.format_list_numbered_sharp, size: 48,)
      ),
      ListTile(
        leading: Icon(Icons.app_registration_outlined), title: Text("Р Е Г И С Т Р А Ц И Я"),
        onTap: () {
          Navigator.pushNamed(context, '/registrationpage');
        },
      ),
      ListTile(
        leading: Icon(Icons.data_saver_off_sharp), title: Text("Б У Н К Е Р А"),
        onTap: () {
          Navigator.pushNamed(context, '/bunkerspage');
        },
      ),
      ListTile(
        leading: Icon(Icons.note_add), title: Text("З А Я В К И"),
        onTap: () {
          Navigator.pushNamed(context, '/zayavkipage');
        },
      ),
      ],
      )
      )
    );
  }
}