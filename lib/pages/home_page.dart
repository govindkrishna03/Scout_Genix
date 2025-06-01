import 'package:flutter/material.dart';

// Import your other pages here:
import 'package:scoutgenix_app/pages/player_list_page.dart';
import 'package:scoutgenix_app/pages/team_fit_page.dart';
import 'package:scoutgenix_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final Widget _homeWidget = SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Welcome\nAdmin",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              hintText: "Search",
              filled: true,
              fillColor: Colors.lightBlue.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
          // Add more home page widgets here
        ],
      ),
    ),
  );

  Widget _playersPage = Scaffold(
    backgroundColor: Colors.black,
    body: PlayerListPage(),
  );

  Widget _teamFitPage = Scaffold(
    backgroundColor: Colors.black,
    body: TeamFitPage(),
  );

  final Widget _profilePage = SafeArea(
    child: ProfilePage(),
  );

  late final List<Widget> _pages = [
    _homeWidget,     // white themed home
    _playersPage,    // black themed players
    _teamFitPage,    // black themed team fit
    _profilePage,    // white themed profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // white background for the entire app scaffold
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[600],
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Players',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Team Fit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
