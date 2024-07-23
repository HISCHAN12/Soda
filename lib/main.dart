import 'package:flutter/material.dart';

void main() => runApp(const BoilerPlateApp());

class BoilerPlateApp extends StatelessWidget {
  const BoilerPlateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoilerPlateExample(),
    );
  }
}

class BoilerPlateExample extends StatefulWidget {
  const BoilerPlateExample({super.key});

  @override
  State<BoilerPlateExample> createState() => _BoilerPlateExampleState();
}

class _BoilerPlateExampleState extends State<BoilerPlateExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 24,
      color: Color.fromRGBO(0, 0, 0, 0.6));
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: optionStyle,
    ),
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: optionStyle,
    ),
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: optionStyle,
    ),
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff4B6EB1),
        title: Padding(
          padding: const EdgeInsets.only(right: 190),
          child: const Text(
            'SODA',
            style: TextStyle(
              fontSize: 20,
              height: 1.2,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: Text(
                'SODA',
                style: TextStyle(
                  fontSize: 20,
                  height: 1.2,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.grey),
              title: Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: Text(
                  'Icon:favorite',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    letterSpacing: 0.1,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 66, 96, 151),
        unselectedItemColor: Color.fromARGB(21, 24, 23, 23),
        unselectedLabelStyle:
            TextStyle(color: Color.fromARGB(227, 10, 10, 10), fontSize: 14),
        onTap: _onItemTapped,
      ),
    );
  }
}
