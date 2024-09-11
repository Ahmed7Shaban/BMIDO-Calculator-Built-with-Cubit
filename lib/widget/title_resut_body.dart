import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Body Mass Index",
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
            color: Color(0xff081854),
            fontSize: 30.78,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
