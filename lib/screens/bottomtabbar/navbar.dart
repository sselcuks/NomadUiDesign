
import 'package:flutter/material.dart';

import 'package:nomad_project/screens/countries.dart';
import 'package:nomad_project/screens/explore.dart';

import '../cities.dart';
import '../flights.dart';
import '../profile.dart';



class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Explore(),
    Cities(),
    Countries(),
    Flights(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            title: Text(
              'Explore',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            title: Text(
              'Cities',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes
            ),
            title: Text(
              'Country',
            ),
          ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.airplanemode_active,
            ),
            title: Text(
              'Flights',
            ),
            
          ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
            ),
            title: Text(
              'Profile',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 12.0,
        unselectedFontSize: 10.0,
      ),
    );
  }
}





















// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:nomad_project/screens/bottomtabbar/country.dart';
// import 'package:nomad_project/screens/bottomtabbar/flights.dart';
// import 'package:nomad_project/screens/bottomtabbar/user_profile.dart';
// import 'package:nomad_project/screens/flags.dart';
// import 'package:nomad_project/screens/homepage.dart';
// import 'package:nomad_project/utils/appbar.dart';
// import 'dart:math';

// class Navbar extends StatefulWidget {
//   @override
//   _NavbarState createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int _currentIndex;
//   List<Widget> _children;

//   @override
//   void initState() {
//     _currentIndex = 0;
//     _children = [
//       CountryScreen(),
//       Countries(),
//       HomePage(),
//       Profile()
//     ];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
    
//       tabBar: CupertinoTabBar(
//         currentIndex: _currentIndex,
//         onTap: onTabTapped,
        
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             title: Text("Explore"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.map),
//             title: Text("Country"),
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.local_airport), 
//               title: Text("Flights")),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.card_travel),
//             title: Text("Profile"),
//           ),
//         ],

//       ),
//         tabBuilder: (context, int index) {
//           return CupertinoTabView(
//             builder: (context) {
//               return SafeArea(
//                 top: false,
//                 bottom: false,
//                 child: CupertinoApp(
//                   home: CupertinoPageScaffold(
//                     resizeToAvoidBottomInset: false,
//                     child: _children[_currentIndex],
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//     );
//   }

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
// }