import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class welcomPage extends StatefulWidget {
  const welcomPage({super.key});

  @override
  State<welcomPage> createState() => _welcomPageState();
}

class _welcomPageState extends State<welcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 500,
              height: 200,
              child: Text(
                "Welcome to my Application",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            TextField(
                decoration: InputDecoration(
                    helperText: "Search about any thing you want",
                    hintText: "Search here",
                    labelText: "Cars,Apartment,Phones...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: Icon(Icons.search))),
            ElevatedButton.icon(
                onPressed: (() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return loginpage();
                    },
                  ));
                }),
                icon: Icon(Icons.home),
                label: Text("Homepage"))
          ],
        ),
      ),
    );
  }
}
