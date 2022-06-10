import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/abilash.jpeg"),
              ),
              const Text(
                'Ravindran Abilash',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              const Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "SourceSansPro",
                    fontSize: 25,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "++94 76 76 4021",
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20,
                        fontFamily: "SourceSansPro"),
                  ),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "abilash@gmail.com",
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20,
                        fontFamily: "SourceSansPro"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
