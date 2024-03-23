import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> users = [
    {"firstName": "JAMARELO"},
    {"firstName": "John"},
    {"firstName": "An"},
    {"firstName": "Gabriel Dutra"},
    {"firstName": "Luis"},
    {"firstName": "Anderson"},
    {"firstName": "Diego Senac Reis"},
    {"firstName": "Caio Pinto 369"},
    {"firstName": "JoP"},
    {"firstName": "SADASD"},
    {"firstName": "SAD"},
    {"firstName": "GFDGSD"},
    {"firstName": "SsAD"},
    {"firstName": "JofghdfghdfP"},
    {"firstName": "JohgdshP"},
    {"firstName": "JohgjP"},
    {"firstName": "JdghdfghoP"},
    {"firstName": "JghdfgfoP"},
    {"firstName": "JogfhdfghfjhP"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 16),
          child: Container(
            color: Colors.green,
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'CHAT',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: 'STATUS',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'CALLS',
                ),
              ],
              currentIndex: 0,
              selectedItemColor: Colors.green,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            for (var user in users) _buildUserWidget(user["firstName"]),
          ],
        ),
      ),
    );
  }

  Widget _buildUserWidget(String firstName) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Conversa',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
