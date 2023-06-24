import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.size = 14,
    this.color = Colors.white,
    this.overflows = TextOverflow.ellipsis,
    this.textAligns = TextAlign.left,
    this.weight = FontWeight.normal,
    this.lines = 1,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  final TextAlign textAligns;
  final FontWeight weight;
  final int lines;
  final TextOverflow overflows;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAligns,
      overflow: overflows,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}
