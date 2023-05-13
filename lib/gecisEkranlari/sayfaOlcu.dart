import 'package:flutter/material.dart';

import '../yardimciSayfalar/Fonksiyonlar.dart';

class SayfaOlcu extends StatefulWidget {
  const SayfaOlcu({Key? key}) : super(key: key);

  @override
  _SayfaOlcuState createState() => _SayfaOlcuState();
}

class _SayfaOlcuState extends State<SayfaOlcu> {
  String _malzeme = "";
  Widget _malzemeDetayi = Container();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          leading: Fonksiyon().geriNavigasyon(context),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 150, right: 8, left: 12),
          child: Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('\nÖlçülecek Malzeme:   '),
              DropdownButton(dropdownColor: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(18)),

                hint: Text(_malzeme),
                items: const [
                  DropdownMenuItem(
                    value: 'Şeker',
                    child: Text('Şeker'),
                  ),
                  DropdownMenuItem(
                    value: 'Un',
                    child: Text('Un'),
                  ),
                  DropdownMenuItem(
                    value: 'Yağ',
                    child: Text('Yağ'),
                  ),
                  DropdownMenuItem(
                    value: 'Süt',
                    child: Text('Süt'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _malzeme = value.toString();

                    if (_malzeme == 'Şeker') {
                      _malzemeDetayi = Expanded(
                        child: Container(
                            height: 350,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(21))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("1 su bardağı şeker = 180 gram"),
                                Text("3/4 su bardağı şeker = 140 gram"),
                                Text("2/3 su bardağı şeker = 115 gram"),
                                Text("1/2 su bardağı şeker = 90 gram"),
                                Text("1/3 su bardağı şeker = 60 gram"),
                                Text("1/4 su bardağı şeker = 35 gram"),
                                Text("1 yemek kaşığı şeker = 15 gram"),
                                Text("Tepeleme 1 yemek kaşığı şeker= 23 gram"),
                                Text("1 tatlı kaşığı şeker = 8 gram"),
                                Text("1 çay kaşığı şeker = 4 gram"),
                              ],
                            )),
                      );
                    } else if (_malzeme == 'Un') {
                      _malzemeDetayi = Expanded(
                          child: Container(
                            height: 150,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                BorderRadius.all(Radius.circular(21))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                            Text("1 su bardağı un = 120 gram"),
                            Text("3/4 su bardağı un = 90 gram"),
                            Text("2/3 su bardağı un = 80 gram"),
                            Text("1/2 su bardağı un = 60 gram"),
                            Text("1/3 su bardağı un = 40 gram"),
                            Text("1/4 su bardağı un = 30 gram"),
                            Text("1 yemek kaşığı un = 9 gram"),
                            Text("1 tatlı kaşığı un = 3 gram"),
                          ],
                        )),
                      );
                    } else if (_malzeme == 'Yağ') {
                      _malzemeDetayi = Expanded(
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                            Text("Yağ Ölçüleri Çok Yakında Burada Olacak"),
                          ],
                        )),
                      );
                    } else if (_malzeme == 'Süt') {
                      _malzemeDetayi = Expanded(
                          child: Container(
                          height: 250,
                          decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                          BorderRadius.all(Radius.circular(21))),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                            Text("1 su bardağı süt = 210 gram "),
                            Text("3/4 su bardağı süt = 180 gram"),
                            Text("2/3 su bardağı süt = 150 gram"),
                            Text("1/2 su bardağı süt = 120 gram"),
                            Text("1/3 su bardağı süt = 80 gram"),
                            Text("1/4 su bardağı süt = 60 gram"),
                            Text("1 yemek kaşığı süt = 15 gram"),
                            Text("1 tatlı kaşığı süt = 5gram"),
                            Text("1 çay kaşığı süt = 2 gram"),
                          ],
                        )),
                      );
                    } else {
                      _malzemeDetayi = Container();
                    }
                  });
                },
              ),
              _malzemeDetayi,
            ],
          )),
        ),
      ),
    );
  }
}
