import 'package:flutter/material.dart';

import '../uitils/colors.dart';
import '../widget/result_body.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.Kbackground,
        body: ResultBody(),
      ),
    );
  }
}
