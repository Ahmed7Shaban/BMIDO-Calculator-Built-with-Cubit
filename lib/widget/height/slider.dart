import 'package:bmi_do/uitils/colors.dart';
import 'package:bmi_do/widget/card_title.dart';
import 'package:bmi_do/widget/result_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderCard extends StatelessWidget {
  const SliderCard(
      {super.key,
      required this.label,
      required this.result,
      required this.onChanged,
      required this.value});
  final String label;
  final double result;
  final double value;
  final Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: AppColor.Kprimary,
          )),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 3, top: 18),
            child: CardTitle(title: "Height (CM)"),
          ),
          ResultCard(result: result),
          Slider(
            value: value,
            max: 300,
            min: 1,
            divisions: 299,
            label: label,
            onChanged: onChanged,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 28, right: 30, bottom: 25, top: 19),
            child: Row(
              children: [
                Text(
                  "50 cm",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 12.95, color: Color(0xff060918))),
                ),
                const Spacer(),
                Text(
                  "300 cm",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 12.95, color: Color(0xff060918))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
