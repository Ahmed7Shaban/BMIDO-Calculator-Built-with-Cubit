import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/app_cubit/app_cubit.dart';
import '../cubits/app_cubit/app_state.dart';
import 'app_bar_text.dart';
import 'result_box.dart';
import 'title_resut_body.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit Get = AppCubit.get(context);
    String numberStr = Get.result.toStringAsFixed(2);

    // Split the string at the decimal point
    List<String> parts = numberStr.split('.');

    // Extract integer and decimal parts
    String integerPart = parts[0];
    String decimalPart = parts.length > 1 ? parts[1] : '';
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const AppBarText(),
              const SizedBox(height: 50),
              const TitleText(),
              const SizedBox(height: 42),
              ResultBox(
                bmi: Get.result,
                result: integerPart,
                resultDOT: '.${decimalPart}',
              ),
            ],
          ),
        ),
      );
    });
  }
}
