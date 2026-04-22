import "package:flutter/material.dart";
import "login.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewHomePage(),
    );
  }
}

class NewHomePage extends StatefulWidget {
  const NewHomePage({super.key});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Text(
                  'My Alz App',
                  style: TextStyle(fontSize: 50, color: Colors.black87),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                    },
                    child: Text('Log In'),
                    style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 32), // 👈 change this number
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 32), // 👈 change this number
                    ),
                  ),
                )
              ],
            )
          ),
        ),
      );
  }
}