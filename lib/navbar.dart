import 'package:flutter/material.dart';
import 'package:demoapp/main.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Ankit Singh'),
            accountEmail: Text('ankitsingh60687@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
              color: Colors.indigo
            ),
          ),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Upload shot'),
            onTap: () => print('Upload tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact us'),
            onTap: () => print('Contact tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.line_axis),
            title: const Text('Statistics'),
            onTap: () => print('Stats tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () => print('Share tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () => print('Notifications tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => print('Settings tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sign out'),
            onTap: () {
              // Navigate to the login page
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
          
        ],
      ),
    );
  }
}