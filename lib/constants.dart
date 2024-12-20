import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];
var myAppBar = AppBar(
  title: const Center(child: Text("RESPONSIVE DESIGEN FOR FLUTTER")),
  backgroundColor: Colors.amber,
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      const DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text("DASHBOARD"),
        onTap: () {
          // Navigate to Dashboard Page
          print("DASHBOARD clicked");
        },
      ),
      ListTile(
        leading: const Icon(Icons.production_quantity_limits),
        title: const Text("PRODUCTS"),
        onTap: () {
          // Navigate to Products Page
          print("PRODUCTS clicked");
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text("SETTINGS"),
        onTap: () {
          // Navigate to Settings Page
          print("SETTINGS clicked");
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text("LOGOUT"),
        onTap: () {
          // Perform logout action
          print("LOGOUT clicked");
        },
      ),
    ],
  ),
);

var myfooter = Container(
  color: Colors.amber,
  padding: const EdgeInsets.symmetric(vertical: 20),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // Add the link to your Facebook page here
              print("Facebook clicked");
            },
            child: const Text(
              "Facebook",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {
              // Add the link to your LinkedIn profile here
              print("LinkedIn clicked");
            },
            child: const Text(
              "LinkedIn",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {
              // Add the link to your Instagram profile here
              print("Instagram clicked");
            },
            child: const Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      const Text(
        "© 2024 Your Company Name. All rights reserved.",
        style: TextStyle(color: Colors.black),
      ),
    ],
  ),
);
