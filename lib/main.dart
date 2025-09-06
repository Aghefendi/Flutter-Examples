import 'package:flutter/material.dart';
import './widgets/my_card.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil Sayfası'),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  'assets/images/resim.jpeg',
                  width: width * 0.50,
                  height: height * 0.20,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                "Mehmet Agah Çiçek",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("Flutter Geliştiricisi"),
              SizedBox(height: height * 0.01),

              MyCard(width: width),

              Card(
                elevation: 10,
                color: Colors.grey.shade50,
                child: Container(
                  padding: EdgeInsets.all(30),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [
                      Text(
                        "Hakkında",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        "Flutter ile mobil geliştirme yapıyorum. Siber güvenlik ile ilgileniyorum, Yeni teknolojiler ögrenmek ve kendimi geliştirmekten hoşlanıyorum",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
