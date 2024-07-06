import 'package:flutter/material.dart';

class AboutKuliner extends StatelessWidget {
  const AboutKuliner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Kuliner',
          style: TextStyle(
            fontFamily: 'RobotoSlab', // Custom font
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(), // Smooth scrolling effect
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/image/kuliner_logo.png'),
                ),
                SizedBox(height: 20.0),
                buildCard(
                  'Jelajahi Dunia Bersama Kami',
                  'Kami berdedikasi untuk memberikan pengalaman perjalanan kami tentang makanan makanan yang berada di nusantara. Misi kami adalah membantu anda menemukan makanan yang cocok dengan gaya hidup anda.',
                ),
                buildCard(
                  'Visi Misi',
                  'Menjadi salah satu yang menawarkan pengalaman dalam perjalanan menemukan makanan yang menarik di Nusantara.',
                ),
                buildCard(
                  'Layanan',
                  'Kami akan memandu anda akan dunia luar tentang Kuliner dan makanan yang berada di Nusantara termasuk letak Geografi, resep, dan gambaran .',
                ),
                buildCard(
                  'Kontak Kami',
                  'Email: Contact@Kuliner.com\nPhone: +62 8123456789\nAddress: 123 jalan jakarta, Antapani, City Bandung',
                ),
                SizedBox(height: 40.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String content) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      color: Colors.transparent,
      child: Card(
        color: Colors.white.withOpacity(0.9),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoSlab', // Custom font
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'RobotoSlab', // Custom font
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
