import 'package:flutter/material.dart';
import 'package:login_sign_up_flutter/login_screen.dart';
import 'package:login_sign_up_flutter/sign_up_screen.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _lstScreen = [
    SignUpScreen(),
    LoginScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: _lstScreen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), label: "Sign up"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        ],
      ),
    );
  }
}
