import 'package:flutter/material.dart';

TestYapisi BenimTestim = new TestYapisi();

class TestYapisi {
  List<Widget> ikonlar = [];
  List<Soru> sorular = [
    Soru(
        soru_metni:
            "“Sinekli Bakkal” Romanının Yazarı Aşağıdakilerden Hangisidir?",
        a_sikki: "Reşat Nuri Güntekin",
        b_sikki: "Halide Edip Adıvar",
        c_sikki: "Ziya Gökalp",
        d_sikki: "Ömer Seyfettin",
        cevap: "C"),
    Soru(
        soru_metni:
            "Aşağıda Verilen İlk Çağ Uygarlıklarından Hangisi Yazıyı İcat Etmiştir?",
        a_sikki: "Hititler ",
        b_sikki: "Elamlar ",
        c_sikki: "Sümerler ",
        d_sikki: "Urartular",
        cevap: "C"),
    Soru(
        soru_metni:
            "Tsunami Felaketinde En Fazla Zarar Gören Güney Asya Ülkesi Aşağıdakilerden Hangisidir?",
        a_sikki: "Endonezya ",
        b_sikki: "Srilanka ",
        c_sikki: "Tayland ",
        d_sikki: "Hindistan",
        cevap: "A"),
    Soru(
        soru_metni:
            "Aşağıdakilerden Hangisi Dünya Sağlık Örgütünün Kısaltılmış İsmidir?",
        a_sikki: "Uhw ",
        b_sikki: "Unıcef ",
        c_sikki: "Who ",
        d_sikki: "Nato",
        cevap: "C"),
    Soru(
        soru_metni: "Romen Rakamında Hangi Sayı Yoktur?",
        a_sikki: "0",
        b_sikki: "50",
        c_sikki: "100",
        d_sikki: "1000",
        cevap: "A"),
    Soru(
        soru_metni: "Üç Büyük Dince Kutsal Sayılan Şehir Hangisidir?",
        a_sikki: "Mekke ",
        b_sikki: "Kudüs ",
        c_sikki: "Roma ",
        d_sikki: "İstanbul",
        cevap: "B"),
    Soru(
        soru_metni: "Hangi İlimizde Demiryolu Yoktur?",
        a_sikki: "Batman ",
        b_sikki: "Kütahya ",
        c_sikki: "Aydın ",
        d_sikki: "Muğla",
        cevap: "D"),
  ];
}

void cevap_kontrol(String kcevap) {
  if (BenimTestim.sorular[aktif_soru].Cevap == kcevap) {
    BenimTestim.ikonlar.add(Icon(
      Icons.mood,
      color: Colors.green,
    ));
  } else {
    BenimTestim.ikonlar.add(Icon(
      Icons.mood_bad,
      color: Colors.red,
    ));
  }
  sonrakiSoru();
  kalansoru--;
}

void ilkSoruyaDon() {
  aktif_soru = 0;
  BenimTestim.ikonlar.clear();
  kalansoru = BenimTestim.sorular.length;
}

int kalansoru = BenimTestim.sorular.length;
int aktif_soru = 0;
void sonrakiSoru() {
  if (BenimTestim.sorular.length > aktif_soru) {
    aktif_soru++;
  } else {
    aktif_soru = 0;
  }
}

String soru_metnini_getir() {
  return BenimTestim.sorular[aktif_soru].Soru_metni;
}

class Soru {
  late String Soru_metni;
  late String A_sikki;
  late String B_sikki;
  late String C_sikki;
  late String D_sikki;
  late String Cevap;
  Soru(
      {required String soru_metni,
      required String a_sikki,
      required String b_sikki,
      required String c_sikki,
      required String d_sikki,
      required String cevap}) {
    Soru_metni = soru_metni;
    A_sikki = a_sikki;
    B_sikki = b_sikki;
    C_sikki = c_sikki;
    D_sikki = d_sikki;
    Cevap = cevap;
  }
}
