import 'package:flutter/material.dart';

class PlayerListPage extends StatelessWidget {
  final List<Map<String, String>> players = [
    {
      "name": "Lionel Messi",
      "position": "Right Winger",
      "image": "assets/messi.jpg"
    },
    {
      "name": "Cristiano Ronaldo",
      "position": "Left Winger",
      "image": "assets/ronaldo.jpg"
    },
    {
      "name": "Kylian Mbappé",
      "position": "Center Forward",
      "image": "assets/mbappe.jpg"
    },
    {
      "name": "Kevin De Bruyne",
      "position": "Midfielder",
      "image": "assets/debruyne.jpg"
    },
    {
      "name": "Virgil van Dijk",
      "position": "Center Back",
      "image": "assets/vandijk.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Updated to white theme
      appBar: AppBar(
        title: Text("Players"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          final player = players[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(player["image"]!),
            ),
            title: Text(player["name"]!, style: TextStyle(color: Colors.black)),
            subtitle: Text(player["position"]!, style: TextStyle(color: Colors.grey[700])),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey[600]),
          );
        },
      ),
    );
  }
}
