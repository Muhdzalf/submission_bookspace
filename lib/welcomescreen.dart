import 'package:flutter/material.dart';
import 'package:submission_bookspace/theme.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/book.png',
              ),
            )),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Space',
                  style: title,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Tempat bagi para pecinta buku untuk berkumpul dan saling terhubung satu sama lain!',
                  style: subtitle.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'MULAI',
                    style: subtitle.copyWith(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    padding: EdgeInsets.all(15),
                    primary: green,
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
