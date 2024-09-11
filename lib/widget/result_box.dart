import 'package:flutter/material.dart';

import '../uitils/colors.dart';
import 'bmi_result_texts.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {super.key,
      required this.bmi,
      required this.result,
      required this.resultDOT});
  final double bmi;
  final String result;
  final String resultDOT;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: double.infinity,
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
            const SizedBox(height: 56),
            const BmiResultText(),
            FittedBox(
                child: BmiResult(
              result: result,
              resultDOT: resultDOT,
            )),
            //   const NORMALBMI(),
            TypeBmi(
              bmi: bmi,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
