import 'package:flutter/material.dart';
import 'package:submission_bookspace/models/buku_lainnya.dart';
import 'package:submission_bookspace/navigation_button.dart';
import 'package:submission_bookspace/theme.dart';

class OtherBookDetailScreen extends StatelessWidget {
  final OtherBook otherBook;

  const OtherBookDetailScreen({Key key, this.otherBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SizedBox(
                height: 325,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            otherBook.judul,
                            style: title,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            otherBook.penulis,
                            style: subtitle.copyWith(color: grey, fontSize: 16),
                          ),
                        ),
                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            color: lightGrey,
                            child: Column(
                              children: [
                                Text(
                                  'Rating',
                                  style: title.copyWith(fontSize: 20),
                                ),
                                Text(
                                  otherBook.ranting,
                                  style: title.copyWith(fontSize: 36),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 215,
                      height: 323,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(otherBook.image))),
                    )
                  ],
                ),
              ),
            ),
            NavigationButton(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Sinopsis',
                style: title.copyWith(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text(
                otherBook.sinopsis,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      )),
    );
  }
}
