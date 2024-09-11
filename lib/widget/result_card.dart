import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.result});
  final double result;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        "$result",
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
          fontSize: 57.39,
          color: Color(0xff6C63FF),
          fontWeight: FontWeight.w700,
        )),
      ),
    );
  }
}
