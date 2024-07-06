import 'package:flutter/material.dart';
import 'detail_kuliner.dart';

class ListKuliner extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Rendang",
      "kota": "Minangkabau",
      "image": "assets/image/rendang.jpg",
      "gallery": [
        "assets/image/rendang1.jpg",
        "assets/image/rendang2.jpg",
        "assets/image/rendang3.jpg"
      ],
      "desc": "Rendang merupakan salah satu masakan Indonesia yang terkenal akan kelezatannya. Rendang adalah masakan daging yang berasal dari Minangkabau Sumatra Barat Indonesia.."
    },
    {
      "nama": "Soto",
      "kota": " pesisir pantai utara jawa",
      "image": "assets/image/soto.jpg",
      "gallery": [
        "assets/image/soto1.jpg",
        "assets/image/soto2.jpg",
        "assets/image/soto3.jpg"
      ],
      "desc": "Soto (juga dikenal dengan beberapa nama lokal seperti, sroto, sauto, tauto, atau coto) adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran soto berasal dari pesisir pantai utara jawa pada abad ke-19 Masehi,."
    },
    {
      "nama": "Pempek",
      "kota": "Palembang",
      "image": "assets/image/pempek.jpg",
      "gallery": [
        "assets/image/pempek1.jpg",
        "assets/image/pempek2.jpg",
        "assets/image/pempek3.jpg"
      ],
      "desc": "Pempek merupakan jajanan yang memiliki potensi sebagai camilan sehat. Sebab, bahan pembuatannya menggunakan ikan yang merupakan sumber protein baik. Pempek, mpek-mpek, atau dalam bahasa Indonesia gaul empek-empek, adalah makanan khas Palembang, Sumatera Selatan."
    },
    {
      "nama": "Sate",
      "kota": "Ponogoro",
      "image": "assets/image/sate.jpg",
      "gallery": [
        "assets/image/sate1.jpg",
        "assets/image/sate2.jpg",
        "assets/image/sate3.jpg"
      ],
      "desc": "Sate adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. Sate disajikan dengan berbagai macam bumbu yang bergantung pada variasi resep sate."
    },
    {
      "nama": "Sambal",
      "kota": "Bandung",
      "image": "assets/image/sambal.jpg",
      "gallery": [
        "assets/image/sambal1.jpg",
        "assets/image/sambal2.jpg",
        "assets/image/sambal3.jpg"
      ],
      "desc": "Ranca Upas adalah area perkemahan dan konservasi rusa yang terletak di Ciwidey, Bandung. Tempat ini menawarkan pengalaman berkemah yang unik dengan pemandangan alam yang indah dan udara sejuk."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuliner'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailKuliner(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}