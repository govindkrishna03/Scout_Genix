import 'package:flutter/material.dart';

class TeamFitPage extends StatelessWidget {
  final double fitScore = 87.1;
  final int price = 30000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  // White background
      appBar: AppBar(
        title: const Text("Team Fit Score"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Fit Accuracy",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 180,
                  height: 180,
                  child: CircularProgressIndicator(
                    value: fitScore / 100,
                    strokeWidth: 12,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
                  ),
                ),
                Text(
                  "${fitScore.toStringAsFixed(1)}%",
                  style: const TextStyle(fontSize: 28, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Price", style: TextStyle(color: Colors.black54, fontSize: 16)),
            Text(
              "₹ ${price.toString().replaceAllMapped(RegExp(r'(\d{2})(?=(\d{2})+(?!\d))'), (m) => "${m[1]},")}",
              style: const TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
