import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:submission_bookspace/models/buku_lainnya.dart';
import 'package:submission_bookspace/models/buku_rekomendasi.dart';
import 'package:submission_bookspace/theme.dart';

import 'detailscreen.dart';
import 'detailscreen_other.dart';

class Home extends StatelessWidget {
  final String username;

  const Home({Key key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: double.infinity,
                height: 242,
                decoration: BoxDecoration(
                  color: blue,
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, $username',
                        style: title.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Selamat datang, di',
                        style: subtitle.copyWith(color: Colors.white),
                      ),
                      Text(
                        'BOOK SPACE',
                        style:
                            title.copyWith(color: Colors.white, fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Rekomendasi',
                style: title.copyWith(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 255,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (build, index) {
                  final RecomendBook recomend = recomendBook[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(
                          recomendBook: recomend,
                        );
                      }));
                    },
                    child: BookCard(
                      judul: recomend.judul,
                      penulis: recomend.penulis,
                      imageUrl: recomend.image,
                    ),
                  );
                },
                itemCount: recomendBook.length,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Buku Lainnya',
                style: title.copyWith(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 255,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (builder, index) {
                  final OtherBook book = otherbook[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return OtherBookDetailScreen(
                          otherBook: book,
                        );
                      }));
                    },
                    child: BookCard(
                      judul: book.judul,
                      imageUrl: book.image,
                      penulis: book.penulis,
                    ),
                  );
                },
                itemCount: otherbook.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String judul;
  final String penulis;
  final String imageUrl;
  const BookCard({
    Key key,
    this.judul,
    this.penulis,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 14, bottom: 5),
          color: grey,
          height: 250,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: judul,
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(imageUrl))),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                judul,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: title.copyWith(fontSize: 14),
              ),
              Text(
                penulis,
                style: subtitle.copyWith(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
