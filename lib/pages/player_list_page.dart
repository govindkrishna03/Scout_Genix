import 'package:flutter/material.dart';

class PlayerListPage extends StatelessWidget {
  final List<Map<String, String>> players = List.generate(5, (index) => {
        "name": "Lionel Messi",
        "position": "Center Forward",
        "image": "assets/messi.jpg"
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("List"), backgroundColor: Colors.black),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          final player = players[index];
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(player["image"]!)),
            title: Text(player["name"]!, style: TextStyle(color: Colors.white)),
            subtitle: Text(player["position"]!, style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
          );
        },
      ),
    );
  }
}
