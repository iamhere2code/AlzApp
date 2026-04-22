import "package:flutter/material.dart";
import "note_editor.dart";
import "familiar_faces.dart";

class Journal extends StatelessWidget {
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8A0A0), // pinkish background
      body: SafeArea(
        child: Column(
          children: [
            // Title
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'My Journal',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Grid of journal entries
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(12),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  // First card is the "add" button
                  _AddCard(),
                  // Rest are journal entry cards
                  _JournalCard(title: 'Title', body: 'Today, my daughter Emily took me to the store...'),
                  _JournalCard(title: 'Title', body: 'Today, my daughter Emily took me to the store...'),
                  _JournalCard(title: 'Title', body: 'Today, my daughter Emily took me to the store...'),
                  _JournalCard(title: 'Title', body: 'Today, my daughter Emily took me to the store...'),
                  _JournalCard(title: 'Title', body: 'Today, my daughter Emily took me to the store...'),
                  _JournalCard(title: 'Title', body: 'Today, my daughter Emily took me to the store...'),
                ],
              ),
            ),

            // Emergency button
            SizedBox(
              width: 200,
              height: 64,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE05555),
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {},
                child: const Text(
                  'EMERGENCY',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // --- SHOW POPUP ---
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add New Card'),
                content: const Text('Would you like to add a new card to your list?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);   // close the dialog
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NoteEditor()),
                      );
                    },
                    child: const Text('Add Note'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your save logic here!
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              );
            },
          );
        },
        child: const SizedBox(
          width: 150,
          height: 200,
          child: Center(
            child: Icon(Icons.add, size: 100, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}



class _JournalCard extends StatelessWidget {
  final String title;
  final String body;

  const _JournalCard({required this.title, required this.body});


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              body,
              style: const TextStyle(fontSize: 13),
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
    
  }
}