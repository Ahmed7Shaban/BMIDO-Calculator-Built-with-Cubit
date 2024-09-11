import 'dart:math';

import 'package:bmi_do/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_route_animator/page_route_animator.dart';
import '../cubits/app_cubit/app_cubit.dart';
import '../cubits/app_cubit/app_state.dart';
import '../views/result_view.dart';
import 'age/age_card.dart';
import 'app_bar_text.dart';
import 'height/slider.dart';
import 'male_female.dart';
import 'weight/weight_card.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit Get = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppBarText(),
                const SizedBox(height: 39),
                ImageSelectionWidget(
                  isMaleSelected: Get.isMaleSelected,
                  onTapFamle: () {
                    Get.selectFemale();
                  },
                  onTapMale: () {
                    Get.selectMale();
                  },
                  isFamaleSelected: !Get.isMaleSelected,
                ),
                Row(
                  children: [
                    Expanded(
                        child: WeightCard(
                      remove: () {
                        Get.weightRemove();
                      },
                      add: () {
                        Get.weightAdd();
                      },
                      result: Get.weightResult,
                    )),
                    Expanded(
                        child: AgeCard(
                      remove: () {
                        Get.ageRemove();
                      },
                      add: () {
                        Get.ageAdd();
                      },
                      result: Get.ageResult,
                    )),
                  ],
                ),
                const SizedBox(height: 32),
                SliderCard(
                  label: '${Get.sliderValue.round()}',
                  result: Get.sliderValue.truncateToDouble(),
                  onChanged: (value) {
                    Get.toggleSlider(value);
                  },
                  value: Get.sliderValue,
                ),
                const SizedBox(height: 32),
                CustomElevatedButton(
                  text: "Calculate BMI",
                  textColor: const Color(0xffFFFFFF),
                  onPressed: () {
                    Get.setResult(
                        Get.weightResult / pow((Get.sliderValue / 100), 2));
                    Navigator.push(
                      context,
                      PageRouteAnimator(
                        child: const ResultView(),
                        routeAnimation:
                            RouteAnimation.bottomLeftToTopRightWithFade,
                        //settings: const RouteSettings(arguments: 'I am going'),
                        curve: Curves.easeOut,
                      ),
                    );
                  },
                  backgroundColor: const Color(0xff6C63FF),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
