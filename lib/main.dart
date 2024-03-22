import 'package:flutter/material.dart';

void main() {
  final List<Map<String, dynamic>> users = [
    {
      "id": 1,
      "firstName": "Terry",
      "lastName": "Medhurst",
    },
    {
      "id": 2,
      "firstName": "Sheldon",
      "lastName": "Quigley",
    },
    {
      "id": 3,
      "firstName": "Terrill",
      "lastName": "Hills",
    },
    {
      "id": 4,
      "firstName": "Miles",
      "lastName": "Cummerata",
    }
  ];

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Color(0xFF075E54),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              
            },
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0), 
            child: Row(
              children: [
                SizedBox(width: 50),
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF075E54),
                  child: 
                  Icon(
                    Icons.camera_alt,
                    size: 20,
                    color: Colors.white,
                  )
                ),
                 SizedBox(width: 50),
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF075E54),
                  child: 
                  Text(
                    'Conversas',
                    style: TextStyle(fontSize: 16, color: Colors.white, decoration: TextDecoration.underline, ),
                  ),
                ),
                 SizedBox(width: 50),
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF075E54),
                  child: 
                  Text(
                    'Atualizações',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                 SizedBox(width: 50),
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF075E54),
                  child: 
                  Text(
                    'Ligações',
                    style: TextStyle(fontSize: 16, color: Colors.white),

                  ),
                ),
              ],
            ),
          ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFF075E54),
            ),
            title: Text("${user['firstName']} ${user['lastName']}"),
            subtitle: Text('Digitando...'),
            trailing: Text('02:39 da tarde'),
          );
        },
      ),
    ),
  ));
}