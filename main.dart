import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "K3522012",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Arial',
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 225, 92, 21),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "BAGAS DWI PRASETYO",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 225, 92, 21),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 208, 210, 212),
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Button Pressed!'),
              ),
            );
          },
          icon: const Icon(
            Icons.search,
            size: 20.0,
          ),
          label: const Text(
            'Cari',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, 
          ),
        ),

        drawer: Drawer(
          child: Container(
            color: const Color.fromARGB(255, 255, 255, 255), 
            child: const SafeArea(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text("Lists"),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(Icons.login),
                    title: Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Tambah",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete),
              label: "Hapus",
            ),
          ],
        ),
      ),
    );
  }
}
