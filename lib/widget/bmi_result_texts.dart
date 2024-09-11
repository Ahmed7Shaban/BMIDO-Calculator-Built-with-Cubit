import 'package:bmi_do/uitils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiResultText extends StatelessWidget {
  const BmiResultText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'BMI Results',
      style: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32.69,
        color: AppColor.TextColor,
      )),
    );
  }
}

class BmiResult extends StatelessWidget {
  const BmiResult({super.key, required this.result, required this.resultDOT});
  final String result;
  final String resultDOT;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 37),
      child: Text.rich(
        TextSpan(
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 140.63,
              color: AppColor.Kprimary,
            )),
            text: result,
            children: [
              TextSpan(
                text: resultDOT,
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 42.22,
                  color: AppColor.Kprimary,
                )),
              )
            ]),
      ),
    );
  }
}

class TypeBmi extends StatelessWidget {
  const TypeBmi({super.key, required this.bmi});
  final double bmi;
  String _getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    String category = _getBmiCategory(bmi);

    return Padding(
      padding: const EdgeInsets.only(top: 2.46, bottom: 18.54),
      child: Text.rich(TextSpan(
          text: "You are ",
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
            color: AppColor.TextColor,
          )),
          children: <TextSpan>[
            TextSpan(
              text: category,
              style: const TextStyle(
                fontSize: 24,
                color: AppColor.Kprimary,
                fontWeight: FontWeight.w900,
              ),
            ),
          ])),
    );
  }
}
