import 'package:flutter/material.dart';
import 'package:myapp/welcome.dart';

void main() {
  runApp(MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return loginpage();
  }
}

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://swall.teahub.io/photos/small/70-707471_android-central-wallpaper-gallery-great-download-nexus-nexus.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      helperText: "Should end with @domain.com",
                      hintText: "Enter Your Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      icon: Icon(Icons.email)),
                ),
                Divider(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      helperText: "Password must be at least 8 characters",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    width: 100,
                    height: 100,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return welcomPage();
                            },
                          ));
                        },
                        icon: Icon(Icons.login),
                        label: Text("login")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
