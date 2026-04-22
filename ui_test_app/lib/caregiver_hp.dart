import "package:flutter/material.dart";
import "journal.dart";
import "familiar_faces.dart";


class CaregiverHomePage extends StatelessWidget {
  const CaregiverHomePage({super.key});
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
                  'Patient Center',
                  style: TextStyle(fontSize: 35, color: Colors.black87),
                ),
              const SizedBox(height: 50),
              SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Journal()),
                      );
                    },
                    child: Text('Journal'),
                    style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 32), // 👈 change this number
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                width: 200.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Journal()),
                    );
                  },
                  child: Text('Familiar Faces'),
                  style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16), // 👈 change this number
                  ),
                ),
              )
            ],
          )
        )
      )
    );
  }
}