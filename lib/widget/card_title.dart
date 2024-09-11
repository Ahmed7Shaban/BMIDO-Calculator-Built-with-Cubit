import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Color(0xff081854),
          fontSize: 17.6,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
