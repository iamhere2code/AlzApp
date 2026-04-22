import "package:flutter/material.dart";
import "caregiver_hp.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Log In',
                  style: TextStyle(fontSize: 50, color: Colors.black87),
                ),
                const SizedBox(height: 100),
                  TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                    )
                ),
                const SizedBox(height: 100),
                  const TextField(
                    obscureText: true, // Hides the input text with dots/asterisks
                    decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CaregiverHomePage()),
                      );
                    },
                    child: Text('Log In'),
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

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: true, // Hides the input text with dots/asterisks
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
    );
  }
}