import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 138, 189, 196),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              image: DecorationImage(
                image: AssetImage('assets/img/bg1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text('Ini Menu'.toUpperCase()),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: const Text('Kegiatan'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/activity');
            },
          ),
          ListTile(
            title: const Text('List Kegiatan'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/activity_list');
            },
          ),
          ListTile(
            title: const Text('Galeri'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/galeri');
            },
          ),
        ],
      ),
    );
  }
}
