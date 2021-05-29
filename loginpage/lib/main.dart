import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isHidden = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Login Page"),
        // ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.blue])),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                prefixIcon: Icon(Icons.person),
                                hintText: "Enter the User name",
                                labelText: "Username"),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            obscureText: !_isHidden,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: _isHidden
                                          ? Colors.blue
                                          : Colors.grey),
                                  onPressed: () {
                                    setState(() => _isHidden = !_isHidden);
                                  },
                                ),
                                hintText: "Enter your password",
                                labelText: "Password"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Forget Password ?",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Text("Log In"),
                            icon: Icon(Icons.login),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 30),
                          SignInButton(
                            Buttons.GoogleDark,
                            text: "Log In with Google",
                            onPressed: () {},
                          ),
                          SizedBox(height: 10),
                          SignInButton(
                            Buttons.FacebookNew,
                            text: "Log In with Facebook",
                            onPressed: () {
                              //_showButtonPressDialog(context, 'Google (dark)');
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Text(
                              "Have you not an Account yet? Sign In",
                              style: TextStyle(
                                //decoration: TextDecoration.underline,
                                fontSize: 15,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
