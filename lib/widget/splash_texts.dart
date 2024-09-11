import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmidoText extends StatelessWidget {
  const BmidoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "BMIDO",
      style: GoogleFonts.inter(
          textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 30.42,
        fontStyle: FontStyle.italic, // Italic style
        fontWeight: FontWeight.bold,
      )),
    );
  }
}

class GetStartedText extends StatelessWidget {
  const GetStartedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33, right: 30, bottom: 5),
      child: Text(
        "Get Started with"
        " Tracking Your Health!",
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w900,
        )),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33, right: 30, bottom: 65),
      child: Text(
        "Calculate your BMI and stay on top of your wellness journey, effortlessly.",
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
          color: Color(0xffC6C3F9),
          fontSize: 15.33,
          fontWeight: FontWeight.w400,
        )),
      ),
    );
  }
}
