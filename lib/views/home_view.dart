import 'package:flutter/material.dart';

import '../uitils/colors.dart';
import '../widget/body_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.Kbackground,
      body: BodyHome(),
    ));
  }
}
