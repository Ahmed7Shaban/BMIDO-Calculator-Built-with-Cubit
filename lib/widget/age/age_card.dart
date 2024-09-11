import 'package:bmi_do/widget/card_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uitils/colors.dart';
import '../result_card.dart';
import '../row_add_remove.dart';

class AgeCard extends StatelessWidget {
  const AgeCard(
      {super.key,
      required this.remove,
      required this.add,
      required this.result});
  final Function() remove;
  final Function() add;
  final double result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: AppColor.Kprimary,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 3, top: 27),
              child: CardTitle(
                title: "Age",
              ),
            ),
            ResultCard(
              result: result,
            ),
            RowAddRemove(
              add: add,
              remove: remove,
            ),
          ],
        ),
      ),
    );
  }
}
