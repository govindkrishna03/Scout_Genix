import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/avatar.png'),
                backgroundColor: Colors.grey[300],
              ),
              const SizedBox(height: 16),
              Text(
                'Lionel Scaloni',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'scaloni@football.com',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(height: 32),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.grey[100],
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.black),
                  title: Text('Position', style: TextStyle(color: Colors.black)),
                  subtitle: Text('Head Coach', style: TextStyle(color: Colors.grey[700])),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.grey[100],
                child: ListTile(
                  leading: Icon(Icons.sports_soccer, color: Colors.black),
                  title: Text('Experience', style: TextStyle(color: Colors.black)),
                  subtitle: Text('5 Years', style: TextStyle(color: Colors.grey[700])),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.grey[100],
                child: ListTile(
                  leading: Icon(Icons.location_on, color: Colors.black),
                  title: Text('Location', style: TextStyle(color: Colors.black)),
                  subtitle: Text('Buenos Aires, Argentina', style: TextStyle(color: Colors.grey[700])),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
