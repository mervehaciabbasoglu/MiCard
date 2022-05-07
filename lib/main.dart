import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
    );
  }
}

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Giriş  Sayfası"),
            TextFormField(controller: t1,),
            TextFormField(controller: t2,),
            ElevatedButton(
                child: Text("Giriş Yap"),
              onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>ProfilEkrani(kullaniciAdi: t1.text, sifre: t2.text),
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilEkrani extends StatefulWidget {
  String kullaniciAdi, sifre;
  ProfilEkrani({required this.kullaniciAdi, required this.sifre});

  @override
  State<ProfilEkrani> createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Profil Sayfası"),
            Text(widget.kullaniciAdi),
            Text(widget.sifre),
            ElevatedButton(
                child: Text("Çıkış Yap"),
              onPressed: (){
                  Navigator.pop(context);
              }),
          ],
        ),
      ),
    );
  }
}












