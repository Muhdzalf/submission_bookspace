import 'package:flutter/material.dart';
import 'package:submission_bookspace/models/buku_rekomendasi.dart';
import 'package:submission_bookspace/screens/details/detailscreen.dart';

import 'book_card.dart';

class RecomendBookList extends StatelessWidget {
  const RecomendBookList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (build, index) {
          final RecomendBook recomend = recomendBook[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
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
    );
  }
}
