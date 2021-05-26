import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:submission_bookspace/theme.dart';

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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookCard(),
                  BookCard(),
                  BookCard(),
                  BookCard(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Buku Lainnya',
                style: title.copyWith(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 255,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookCard(),
                  BookCard(),
                  BookCard(),
                  BookCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  const BookCard({
    Key key,
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
              Container(
                color: Colors.white,
                height: 175,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Judul ini belum ada',
                style: title.copyWith(fontSize: 14),
              ),
              Text(
                'Penulis',
                style: subtitle.copyWith(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
