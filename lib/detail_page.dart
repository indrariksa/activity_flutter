import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String selectedImage;

  const DetailPage({Key? key, required this.selectedImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContent = Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(selectedImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(115, 142, 211, 0.898)),
          child: const Center(
            child: Text(
              'Selamat datang di halaman detail',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent,
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              selectedImage,
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
