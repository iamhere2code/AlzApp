import "package:flutter/material.dart";

class NoteEditor extends StatelessWidget {
  const NoteEditor({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Changed MaterialApp to Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Entry"),
        backgroundColor: const Color(0xFFE8A0A0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(hintText: 'Title'),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: 'Start writing...'),
                maxLines: null, // Allows the text field to grow
                expands: true,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Save Journal"),
            ),
          ],
        ),
      ),
    );
  }
}