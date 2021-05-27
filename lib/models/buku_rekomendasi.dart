import 'package:flutter/foundation.dart';

class RecomendBook {
  String judul;
  String penulis;
  String image;
  String ranting;
  String sinopsis;

  RecomendBook(
      {@required this.judul,
      @required this.penulis,
      @required this.ranting,
      @required this.image,
      @required this.sinopsis});
}

var recomendBook = [
  RecomendBook(
      judul: 'Bicara itu ada Seninya',
      penulis: 'Oh Syu Hyang',
      ranting: '-',
      image: 'https://cdn.gramedia.com/uploads/items/9786024553920_BDgfNGw.jpg',
      sinopsis:
          '"TAHUKAH ANDA BAHWA BERBICARA ITU ADA SENINYA?\nKetika komunikasi menjadi hal yang penting untuk bersaing, pakar komunikasi Oh Su Hyang mengeluarkan buku yang sangat berarti. Selain berisi tentang pengalaman peningkatan diri, buku ini juga memuat berbagai konten mengenai teknik komunikasi, persuasi, dan negosiasi.\nLalu bagaimana cara berbicara yang baik? Apakah berbicara dengan artikulasi yang jelas? Atau berbicara tanpa mengambil tarikan napas? Tidak! Sebuah ucapan yang bisa disebut baik adalah yang bisa menggetarkan hati. Ucapan seorang juara memiliki daya tarik tersendiri. Ucapan pemandu acara memiliki kemampuan menghidupkan suasana dan kekuatan kalimatnya yang terus terang. Anda harus pandai berbicara untuk menunjukkan diri Anda kepada lawan bicara dalam kehidupan sosial. Orang yang berbicara dengan mahir akan menjadi lebih maju daripada yang lainnya.\nUntuk mencapai tujuan komunikasi, persuasi, dan negosiasi, Anda harus mengetahui metode komunikasi yang efisien. Buku ini dijabarkan agar dapat dimengerti oleh siapa saja. Terdapat banyak episode menarik dari orang-orang terkenal dan juga rahasia inti dari komunikasi. Jika Anda membacanya dengan runut, saya yakin rasa percaya diri Anda untuk berbicara pun akan tumbuh dengan sendirinya."'),
  RecomendBook(
      judul: 'Sebuah Seni untuk Bersikap Bodo Amat',
      penulis: 'Mark Manson',
      ranting: '3.93',
      image:
          'https://cdn.gramedia.com/uploads/items/9786024526986_Sebuah-Seni-Untuk-Bersikap-Bodo-Amat.jpg',
      sinopsis:
          '"Selama beberapa tahun belakangan, Mark Manson—melalui blognya yang sangat populer—telah membantu mengoreksi harapan-harapan delusional kita, baik mengenai diri kita sendiri maupun dunia. Ia kini menuangkan buah pikirnya yang keren itu di dalam buku hebat ini.\n“Dalam hidup ini, kita hanya punya kepedulian dalam jumlah yang terbatas. Makanya, Anda harus bijaksana dalam menentukan kepedulian Anda.” Manson menciptakan momen perbincangan yang serius dan mendalam, dibungkus dengan cerita-cerita yang menghibur dan “kekinian”, serta humor yang cadas. Buku ini merupakan tamparan di wajah yang menyegarkan untuk kita semua, supaya kita bisa mulai menjalani kehidupan yang lebih memuaskan, dan apa adanya."'),
  RecomendBook(
      judul: 'Senu untuk Mengenal Diri Sendiri',
      penulis: 'Brian Adam',
      ranting: '-',
      image:
          'https://cdn.gramedia.com/uploads/items/seni_mengenal_diri_sendiri.jpg',
      sinopsis:
          'Seni Mengenal Diri Sendiri, seri seni hidup selanjutnya yang siap untuk kalian baca. Buku ini merupakan catatan dan panduan bagi Anda tentang cara mengenal dan mengelola diri sendiri. Dengan menerapkan pedoman di dalamnya, maka Anda dapat segera bertindak untuk mengenal diri sendiri dan kemauan Anda yang sebenarnya. Kejenuhan dalam menjalani hidup sangat mungkin terjadi karena Anda tidak benar-benar mengenal diri sendiri. Anda juga merasa tidak bersemangat karena Anda tidak menyadari tujuan hidup Anda.'),
  RecomendBook(
      judul: 'Kami (Bukan) Sarjana Kertas',
      penulis: 'Js. Khairen',
      ranting: '-',
      image: 'https://cdn.gramedia.com/uploads/items/9786022203858.jpg',
      sinopsis:
          'Di Kampus UDEL, terjebaklah tujuh mahasiswa yang hidup segan kuliah tak mau. Mereka terpaksa kuliah di kampus yang google saja tak dapat mendeteksi. Cobalah sekarang Anda googLing "Kampus UDEL", takkan bertemu!\nAlasan mereka masuk UDEL macam-macam. Ada yang otaknya tak mampu masuk negeri, ada yang uang orangtuanya tak cukup masuk swasta unggul, ada pula yang karena.. biar kuliah aja.'),
];
