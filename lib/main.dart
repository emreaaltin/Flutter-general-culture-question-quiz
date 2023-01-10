import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sorular.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 35, 36),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ilkSoruyaDon();
                      });
                    },
                    child: Text("İlk Soruya Dön"),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  soru_metnini_getir(),
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Text(
              "Kalan Soru       $kalansoru",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children: BenimTestim.ikonlar,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 51, 102, 56)),
                        onPressed: () {
                          setState(() {
                            cevap_kontrol("A");
                          });
                        },
                        child: Text(BenimTestim.sorular[aktif_soru].A_sikki),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 51, 102, 56)),
                        onPressed: () {
                          setState(() {
                            cevap_kontrol("B");
                          });
                        },
                        child: Text(BenimTestim.sorular[aktif_soru].B_sikki),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 51, 102, 56)),
                          onPressed: () {
                            setState(() {
                              cevap_kontrol("C");
                            });
                          },
                          child: Text(BenimTestim.sorular[aktif_soru].C_sikki)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 51, 102, 56)),
                        onPressed: () {
                          setState(() {
                            cevap_kontrol("D");
                          });
                        },
                        child: Text(BenimTestim.sorular[aktif_soru].D_sikki),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
