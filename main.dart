import  'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900], // Warna background menarik
        appBar: AppBar(
          title: Text("I Am Captcha"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[700],

        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://indocenter.co.id/wp-content/uploads/2023/03/Apa-itu-captcha-2048x812.png', // Ganti dengan URL gambar yang valid
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Jalan-jalan ke Kota Medan,"

                        "Jangan lupa beli ketan."

                        "CAPTCHA suruh pilih kendaraan,"

                        "Salah klik, disuruh ulang pelan-pelan!😂😂",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}