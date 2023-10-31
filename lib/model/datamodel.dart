class activityDo {
  String activityName;
  String location;
  String activityDescription;
  String date;
  String imageAsset;
  List<String> imageUrls;

  activityDo({
    required this.activityName,
    required this.location,
    required this.activityDescription,
    required this.date,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var activityDoList = [
  activityDo(
    activityName: 'Seminar Ilmiah',
    location: 'Aula Kampus A',
    activityDescription:
        'Seminar ilmiah adalah acara yang ditujukan untuk membahas perkembangan terbaru dalam penelitian sains. Para pemakalah akan berbagi pengetahuan mereka tentang temuan-temuan terbaru dalam berbagai bidang ilmu pengetahuan. Acara ini juga menjadi wadah untuk pertukaran gagasan dan diskusi antarpeneliti. Seminar ini sangat relevan bagi mahasiswa yang ingin memperluas wawasan mereka dalam ilmu pengetahuan dan teknologi.',
    date: '2023-08-15',
    imageAsset: 'assets/img/gambar1.jpg',
    imageUrls: [
      'https://cdn-2.tstatic.net/jateng/foto/bank/images/Fakultas-Teknik-Universitas-Diponegoro-bekerja-sama-dengan-Engineering-Rese.jpg',
      'https://perpus.unisnu.ac.id/assets/media/750x346-seminar-workshop-mendeley.jpg',
      'https://uniku.ac.id/wp-content/uploads/2023/05/WhatsApp-Image-2023-05-15-at-14.06.57.jpg',
    ],
  ),
  activityDo(
    activityName: 'Outbond Wisata Alam',
    location: 'Cikole Lembang',
    activityDescription:
        'Outbond adalah kegiatan seru di alam terbuka yang bertujuan untuk mengasah kekompakan mahasiswa. Dalam kegiatan ini, peserta akan mengikuti berbagai tantangan dan permainan yang menguji kerjasama tim, kreativitas, serta kemampuan berpikir cepat. Outbond di alam terbuka memberikan pengalaman yang tak terlupakan dan pelajaran berharga bagi peserta.',
    date: '2023-08-15',
    imageAsset: 'assets/img/gambar2.jpg',
    imageUrls: [
      'https://alks-vokasi.umy.ac.id/wp-content/uploads/2019/09/IMG_0163.jpg',
      'https://www.stiebbank.ac.id/wp-content/uploads/2017/04/outbond-akmi-baturaja-di-jogja.jpg',
      'https://www.mpr.go.id/uploads/berita/760_outbound-empat-pilar-mahasiswa-bengkulu-bangkitkan-nasionalisme.jpg',
    ],
  ),
  activityDo(
    activityName: 'Lomba Debat',
    location: 'Ruang Debat',
    activityDescription:
        'Lomba debat antar mahasiswa adalah kompetisi intelektual yang mendorong peserta untuk berdebat tentang berbagai topik menarik. Lomba debat merupakan platform untuk meningkatkan kemampuan berbicara di depan umum, analisis, serta pemahaman mendalam tentang isu-isu kontemporer. Acara ini akan melibatkan peserta dalam diskusi yang mendalam dan kompetitif.',
    date: '2023-10-10',
    imageAsset: 'assets/img/gambar3.jpeg',
    imageUrls: [
      'https://www.unja.ac.id/wp-content/uploads/2022/03/debat-FKIP-3.jpeg',
      'https://files.planet.ung.ac.id/univ/kdmi-23.05.2023.15.41.33.jpg',
      'https://pendis.kemenag.go.id/storage/pictures/posts/16_9/mid/1684812836.jpg',
    ],
  ),
  activityDo(
    activityName: 'Festival Budaya',
    location: 'Taman Kampus B',
    activityDescription:
        'Festival Budaya adalah perayaan yang diadakan untuk merayakan dan mempromosikan keragaman budaya di kampus. Acara ini bertujuan untuk menghormati dan merayakan berbagai aspek budaya yang ada di kalangan mahasiswa. Selama festival, Anda akan dapat menikmati beragam penampilan seni tradisional, kuliner khas, serta pameran budaya. Ini adalah kesempatan yang sempurna untuk memahami dan menghargai keanekaragaman budaya yang ada di kampus, serta untuk memperdalam pemahaman tentang warisan budaya masing-masing. Selain itu, festival ini juga memberikan peluang untuk berinteraksi dengan sesama mahasiswa dan memperluas wawasan tentang budaya-budaya di Indonesia.',
    date: '2023-09-20',
    imageAsset: 'assets/img/gambar4.jpg',
    imageUrls: [
      'https://cdn.antaranews.com/cache/1200x800/2023/10/18/24D04A49-E919-46DC-BE97-7D2DF2F124CB.jpeg',
      'https://asset-2.tstatic.net/jakarta/foto/bank/images/festival-budaya-nusantara.jpg',
      'https://asset-2.tstatic.net/wartakota/foto/bank/images/festival-budaya-nusantara-2018-kota-tangerang.jpg',
    ],
  ),
  activityDo(
    activityName: 'Hackathon IT',
    location: 'Lab Teknologi Informasi',
    activityDescription:
        'Hackathon IT adalah sebuah acara kompetisi pemrograman yang dirancang untuk menguji dan mengembangkan kemampuan pemrograman dan inovasi dalam Teknologi Informasi. Peserta akan diberi tantangan pemrograman yang menantang untuk menciptakan solusi kreatif dalam waktu yang terbatas. Acara ini bertujuan untuk mendorong pemikiran inovatif dan kolaborasi di antara para peserta.',
    date: '2023-11-05',
    imageAsset: 'assets/img/gambar5.jpg',
    imageUrls: [
      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/radarjogja/2022/05/IMG-20220529-WA0035.jpg',
      'https://sorot.co/images/2022/05/sleman/152317_3246_sahabatganjardiygelarlomba20220528152317.jpg',
      'https://cdn-1.timesmedia.co.id/images/2022/11/19/East-Java-Data-Hackathon-2.jpg',
    ],
  ),
  activityDo(
    activityName: 'Bakti Sosial',
    location: 'Panti Asuhan X',
    activityDescription:
        'Kegiatan Bakti Sosial adalah upaya nyata untuk memberikan bantuan dan kebahagiaan kepada anak-anak di panti asuhan. Kami akan berkumpul di Panti Asuhan X untuk memberikan perhatian, cinta, dan dukungan kepada anak-anak yang membutuhkan. Selama acara ini, kami akan mengadakan berbagai kegiatan yang melibatkan interaksi dan kegiatan positif bersama anak-anak, seperti bermain, berbicara, dan memberikan hadiah. Ini adalah kesempatan untuk berbagi kebahagiaan dan membuat perbedaan positif dalam kehidupan anak-anak.',
    date: '2023-12-20',
    imageAsset: 'assets/img/gambar6.jpg',
    imageUrls: [
      'https://farmasi.umy.ac.id/wp-content/uploads/2019/05/WhatsApp-Image-2019-05-13-at-18.48.071-e1558319000779.jpeg',
      'https://news.unimal.ac.id/vic_image/post/unimal-364903196-KKN_220_Kebersihan.JPG',
      'https://unair.ac.id/wp-content/uploads/2020/08/mahasiswa-fakultas-kedokteran-gigi-fkg-unair-lakukan-pemeriksaan-gigi-pada-siswa-sdn-rangkah-i.jpg',
    ],
  ),
  activityDo(
    activityName: 'Seminar Entrepreneurship',
    location: 'Aula Kampus ABC',
    activityDescription:
        'Seminar Entrepreneurship adalah sebuah acara yang bertujuan untuk memberikan wawasan tentang wirausaha dan peluang bisnis di era digital. Acara ini akan menampilkan berbagai pembicara ahli di bidang kewirausahaan yang akan berbagi pengetahuan dan pengalaman mereka. Peserta akan memiliki kesempatan untuk memahami tren bisnis terkini, strategi pemasaran digital, dan inovasi dalam dunia kewirausahaan.',
    date: '2023-12-10',
    imageAsset: 'assets/img/gambar7.jpeg',
    imageUrls: [
      'https://1.bp.blogspot.com/-82N3H5CorPg/VS3MQzMk7NI/AAAAAAAAAdU/HstcTWgbkmE/s1600/bbb.JPG',
      'https://uisi.ac.id/assets/upload/article/1280x572/2d949949b7b07879d8584f9eea69f878.jpg',
      'https://identitasunhas.com/wp-content/uploads/2022/07/WhatsApp-Image-2022-07-04-at-09.19.03.jpeg',
    ],
  ),
  activityDo(
    activityName: 'Turnamen Futsal Mahasiswa',
    location: 'Lapangan Olahraga Kampus XYZ',
    activityDescription:
        'Turnamen Futsal Mahasiswa adalah sebuah kompetisi futsal yang menampilkan antar tim mahasiswa dari berbagai fakultas. Acara ini dirancang untuk meningkatkan semangat olahraga dan persaingan sehat di antara mahasiswa. Peserta akan berkompetisi dalam serangkaian pertandingan futsal yang intens dan menarik.',
    date: '2023-11-28',
    imageAsset: 'assets/img/gambar8.jpg',
    imageUrls: [
      'https://pict.sindonews.net/size/640/salsabila/photo/2023/03/05/1/41947/G-turnamen-futsal-fortami-cup-viii-2023-inu.jpeg',
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/03/24/3687535521.jpg',
      'https://asset-a.grid.id/crop/0x0:1920x1201/700x465/photo/2022/05/11/idn-vie-futsaljpg-20220511050420.jpg',
    ],
  ),
  activityDo(
    activityName: 'Festival Musik Mahasiswa',
    location: 'Lapangan Kampus XYZ',
    activityDescription:
        'Festival Musik Mahasiswa adalah sebuah festival musik yang menampilkan penampilan band dari kalangan mahasiswa. Acara ini dirancang untuk memberikan kesempatan kepada bakat-bakat musik di kalangan mahasiswa untuk tampil di depan publik. Para penonton akan menikmati berbagai genre musik dan penampilan yang menarik.',
    date: '2023-11-26',
    imageAsset: 'assets/img/gambar9.jpg',
    imageUrls: [
      'https://bintantourism.com/wp-content/uploads/2023/08/21082023loba-band-di-Lagoi.jpg',
      'https://presmedia.id/wp-content/uploads/2023/08/Penampilan-grup-band-pelajar-dan-mahasiswa-dalam-acara-Muda-Fest-di-Plaza-Lagoi-Bay-Kawasan-Pariwisata-Lagoi.jpeg',
      'https://sippn.menpan.go.id/images/article/large/festival-musik-band-thamrin-10-20230517124401.jpeg',
    ],
  ),
  activityDo(
    activityName: 'Pertandingan Esport Mahasiswa',
    location: 'Arena Esport Kampus ABC',
    activityDescription:
        'Pertandingan Esport Mahasiswa adalah turnamen game Esport yang diadakan khusus untuk mahasiswa yang menyukai gaming. Acara ini akan menghadirkan berbagai game Esport yang populer dan peserta akan berkompetisi dalam pertandingan seru. Ini adalah kesempatan bagi mahasiswa gamers untuk bersaing dan menunjukkan keterampilan mereka.',
    date: '2023-11-29',
    imageAsset: 'assets/img/gambar10.jpg',
    imageUrls: [
      'https://img.okezone.com/content/2018/09/15/326/1950955/kampus-ini-buka-jurusan-esport-mahasiswa-main-game-untuk-tugas-kuliah-3XYTcGTWxA.jpg',
      'https://esports.id/img/article/480720200722091819.jpg',
      'https://feeds.abplive.com/onecms/images/uploaded-images/2022/07/22/2631e5c161ca32181f0fd513ebecd3fb1658498786_original.jpg?impolicy=abp_cdn&imwidth=650',
    ],
  ),
];
