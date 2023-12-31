import 'package:dicoding_final/appbar.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_final/detail_page.dart';

class GaleriPage extends StatefulWidget {
  @override
  _GaleriPageState createState() => _GaleriPageState();
}

class _GaleriPageState extends State<GaleriPage> {
  List<String> gambar = [
    'gambar1.jpg',
    'gambar2.jpg',
    'gambar3.jpeg',
    'gambar4.jpg',
    'gambar5.jpg',
    'gambar6.jpg',
    'gambar7.jpeg',
    'gambar8.jpg',
    'gambar9.jpg',
    'gambar10.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Galeri Kegiatan'),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showImageBottomSheet(context, gambar[index]);
            },
            child: Card(
              child: Image.asset(
                'assets/img/${gambar[index]}',
                width: 200,
                height: 200,
              ),
            ),
          );
        },
      ),
    );
  }

  void _showImageBottomSheet(BuildContext context, String image) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/img/$image',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),
              const Text("Cek Detail Gambar?"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _navigateToDetailPage(context, image);
                    },
                    child: const Text('Ya'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Tidak'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _navigateToDetailPage(BuildContext context, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(selectedImage: 'assets/img/$image'),
      ),
    );
  }
}
