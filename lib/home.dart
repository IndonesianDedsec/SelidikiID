import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Selediki ID',
          style: TextStyle(color: Colors.black, fontFamily: 'pixels'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info, color: Colors.black),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                      'Selidiki ID',
                      style: TextStyle(fontFamily: 'pixels'),
                    ),
                    content: const Text(
                      'Open Source Intelegence OSINT, Ungkap Kebenaran Tersembunyi dengan OSINT. Dapatkan akses ke alat dan teknik OSINT terkini untuk investigasi digital yang lebih mendalam dan efektif.',
                    ),
                    actions: [
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade200,
                          ),
                        ),
                        child: const Text(
                          'Close',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Screen',
          style: TextStyle(fontSize: 24, fontFamily: 'pixels'),
        ),
      ),
    );
  }
}
