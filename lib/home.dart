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
      appBar: CustomAppBar(title: 'Homepage'),
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
                'Kegiatan kampus adalah tempat untuk mahasiswa dan staf universitas berkumpul dan berpartisipasi dalam berbagai kegiatan akademik dan sosial. Ini adalah pusat inti dalam pengalaman perguruan tinggi, tempat untuk belajar, berkolaborasi, dan berbagi pengetahuan.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Staatliches',
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
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      activity.location,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Image.asset(
                      activity.imageAsset,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      activity.activityDescription,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Tanggal: ${activity.date}',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
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
