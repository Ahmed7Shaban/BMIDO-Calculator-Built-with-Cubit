import 'package:flutter/material.dart';

import '../uitils/colors.dart';
import '../widget/body_splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.Kprimary,
        body: BodySplash(),
      ),
    );
  }
}
