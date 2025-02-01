import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text("Enter your credetail for login"),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            //username
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffcede8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.person), Text("Username")],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //password
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffcede8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.security), Text("Password")],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //login now
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
              ),
              child: Center(
                  child: Text(
                "Login Now",
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              height: 100,
            ),
            //forgot password?
            Text(
              "Forgot password?",
              style: TextStyle(
                  color: Color(0xffc86553), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            //don't have account yet?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color(0xffc86553), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            //line
            Container(
              height: 4, // Thickness of the line
              width: 200, // Full width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.red],
                    stops: [0.7, 0.3] //// 70% black, 30% red
                    // Two colors
                    ),
              ),
            ),
          ],
        ));
  }
}
