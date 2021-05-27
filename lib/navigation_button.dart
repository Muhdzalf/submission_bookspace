import 'package:flutter/material.dart';
import 'package:submission_bookspace/theme.dart';

class NavigationButton extends StatefulWidget {
  const NavigationButton({
    Key key,
  }) : super(key: key);

  @override
  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Expanded(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: green, width: 2)),
              child: Text(
                'Kembali',
                style: title.copyWith(fontSize: 16, color: green),
              ),
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        showSnackbar();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: isFavorite ? Colors.pink : green,
                    ),
                    child: Text(isFavorite ? 'Favorited' : 'Favorite',
                        style:
                            title.copyWith(fontSize: 16, color: Colors.white))))
          ],
        ),
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(isFavorite
          ? 'Buku ditambahkan ke Favorite'
          : 'Buku telah dihapus dari daftar Favorite'),
      duration: Duration(seconds: 1),
    ));
  }
}
