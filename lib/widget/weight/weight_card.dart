import 'package:flutter/material.dart';

import '../../uitils/colors.dart';
import '../card_title.dart';
import '../result_card.dart';
import '../row_add_remove.dart';

class WeightCard extends StatelessWidget {
  const WeightCard(
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
                title: "Weight (KG)",
              ),
            ),
            ResultCard(
              result: result,
            ),
            RowAddRemove(
              remove: remove,
              add: add,
            ),
          ],
        ),
      ),
    );
  }
}
