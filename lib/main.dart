import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile Page",
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 50),

          // color: Colors,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                  "lib/images/haewon2.jpg",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Alvin Hartono',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                label: const Text("Edit Profile"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign Out",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
