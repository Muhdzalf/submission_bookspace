import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:submission_bookspace/theme.dart';

import 'components/header.dart';
import 'components/otherbook_list.dart';
import 'components/recomendbook_list.dart';

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
            Header(username: username),
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
            RecomendBookList(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Buku Lainnya',
                style: title.copyWith(fontSize: 20),
              ),
            ),
            OtherBookList(),
          ],
        ),
      ),
    );
  }
}
