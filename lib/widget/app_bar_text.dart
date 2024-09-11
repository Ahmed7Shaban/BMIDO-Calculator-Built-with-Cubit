import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "BMI CALCULATOR",
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Color(0xff081854),
          fontSize: 22.6,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
