import 'package:flutter/material.dart';

import '../../../theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.username,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
      child: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        color: green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Hello,',
                    style: subtitle.copyWith(color: Colors.white70),
                  ),
                  Text(
                    '$username',
                    style: title.copyWith(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Selamat Datang di,',
                    style: title.copyWith(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'BOOK SPACE',
                    style: title.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Image.asset(
                  'lib/images/fly.png',
                  fit: BoxFit.fitHeight,
                ))
          ],
        ),
      ),
    );
  }
}
