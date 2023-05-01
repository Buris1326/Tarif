//Tarif ekleyebileceğin sayfanın kodlarını içeriyor



import 'package:kirmizi_defter/gecisEkranlari/sayfaKategori.dart';
import 'package:flutter/material.dart';

class Tarif_ekle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Kendi Tariflerini Ekleyebileceğin Kısım Çok Yakında Aktif Olacak Finale Kadar Beklemelisin :((',
                  style: TextStyle(
                    //height: 12,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  )),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 300,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sayfa_kategori()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  color: Colors.red,
                  iconSize: 400,
                ),
              ),
            ],
          )),
    );
  }
}
