import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CalcButton extends StatelessWidget {
  final String text;
  Color? fillColor;
  final Color textColor;
  final double textSize;
  final Function callback;

  CalcButton({
    Key? key,
    required this.text,
    this.fillColor,
    this.textColor = Colors.white,
    this.textSize = 28,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: EdgeInsets.all(10),
        minimumSize: Size(65, 65),
        textStyle: GoogleFonts.reemKufi(
          textStyle: TextStyle(
            fontSize: textSize,
          ),
        ),
      ),
      onPressed: () {
        callback(text);
      },
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
