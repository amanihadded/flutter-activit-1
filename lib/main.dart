import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Dev"),
      ),
      body: const Center(
        child: Text("Welcome to flutter Dev"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when the FAB is pressed
          print("Floating Action Button Pressed");
        },
        child: const Icon(Icons.add),
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("My First Drawer"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item1"),
              leading: Icon(Icons.list),
            ),
            ListTile(
              title: Text("Item2"),
              leading: Icon(Icons.list_alt),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Default selected item
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int index) {
          // Handle tap on BottomNavigationBar items
          print("Selected Index: $index");
        },
      ),
    );
  }
}
