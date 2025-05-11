import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("Welcome\nScaloni", style: TextStyle(color: Colors.white, fontSize: 28)),
              trailing: Icon(Icons.account_circle, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.grey[850],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            // Add featured article and trending widgets here
          ],
        ),
      ),
    );
  }
}
