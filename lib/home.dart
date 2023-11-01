import 'package:dicoding_final/appbar.dart';
import 'package:dicoding_final/drawer.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_final/model/datamodel.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Staatliches');

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Homepage'),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/img/home.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Selamat Datang di Kegiatan Kampus',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Tidak hanya sebagai tempat untuk belajar, kegiatan kampus adalah panggung di mana mahasiswa dan staf universitas dapat menggali potensi, berpartisipasi dalam berbagai kegiatan akademik dan sosial, dan merayakan keragaman budaya. Ini adalah lingkungan yang mempromosikan pertumbuhan pribadi, memupuk kreativitas, dan menginspirasi inovasi. Selain itu, kegiatan kampus adalah wadah untuk membangun hubungan, menjalin persahabatan, dan mengembangkan keterampilan kepemimpinan. Dengan berbagai seminar, lomba, festival, dan kegiatan lainnya, kegiatan kampus menjadi jendela yang memperluas wawasan dan memperkaya pengalaman mahasiswa selama masa studi mereka di perguruan tinggi.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                  // fontFamily: 'Staatliches',
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activityDoList.length,
                itemBuilder: (context, index) {
                  return _buildActivityCard(activityDoList[index]);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
        backgroundColor: Colors.cyan,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellowAccent,
      ),
    );
  }

  Widget _buildActivityCard(activityDo activity) {
    return Container(
      width: 250,
      margin: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      activity.activityName,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      activity.location,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Image.asset(
                      activity.imageAsset,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      activity.activityDescription,
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Tanggal: ${activity.date}',
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
