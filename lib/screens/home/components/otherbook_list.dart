import 'package:flutter/material.dart';
import 'package:submission_bookspace/models/buku_lainnya.dart';
import 'package:submission_bookspace/screens/details/detailscreen_other.dart';

import 'book_card.dart';

class OtherBookList extends StatelessWidget {
  const OtherBookList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (builder, index) {
          final OtherBook book = otherbook[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
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
    );
  }
}
