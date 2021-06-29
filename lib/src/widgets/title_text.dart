import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const TitleText(
      {Key key,
      this.text,
      this.fontSize = 18,
      this.color = LightColor.titleTextColor,
      this.fontWeight = FontWeight.w800})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.muli(fontSize: fontSize, fontWeight: fontWeight, color: color));
  }
}

class AppBarTitle extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final String subTitle;

  const AppBarTitle(
      {Key key,
      this.text,
      this.subTitle,
      this.fontSize = 18,
      this.color = LightColor.titleTextColor,
      this.fontWeight = FontWeight.w800})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: GoogleFonts.muli(fontSize: fontSize, fontWeight: fontWeight, color: color)),
        subTitle == null ? SizedBox() : Text(subTitle, style: GoogleFonts.lato(fontSize: fontSize * .55, color: color)),
      ],
    );
  }
}
