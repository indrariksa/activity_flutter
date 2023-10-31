import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Tambahkan parameter judul

  CustomAppBar({required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.cyan,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Deskripsi'),
                  content: Text(
                      'Ini adalah Aplikasi Kegiatan untuk Proyek Akhir Dicoding.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Tutup'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
