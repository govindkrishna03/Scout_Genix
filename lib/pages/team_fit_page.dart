import 'package:flutter/material.dart';

class TeamFitPage extends StatelessWidget {
  final double fitScore = 87.1;
  final int price = 30000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Team Fit Score"), backgroundColor: Colors.black),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fit Accuracy", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 180,
                  height: 180,
                  child: CircularProgressIndicator(
                    value: fitScore / 100,
                    strokeWidth: 12,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
                  ),
                ),
                Text("${fitScore.toStringAsFixed(1)}%", style: TextStyle(fontSize: 28, color: Colors.white))
              ],
            ),
            SizedBox(height: 30),
            Text("Price", style: TextStyle(color: Colors.white70, fontSize: 16)),
            Text("₹ ${price.toString().replaceAllMapped(RegExp(r'(\d{3})(?=\d)'), (Match m) => "${m[1]},")}",
                style: TextStyle(color: Colors.white, fontSize: 24))
          ],
        ),
      ),
    );
  }
}
