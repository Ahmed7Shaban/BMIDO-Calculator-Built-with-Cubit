import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_route_animator/page_route_animator.dart';

import '../views/home_view.dart';
import 'custom_button.dart';
import 'splash_texts.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: BmidoText()),
          const SizedBox(height: 59),
          SplashImage,
          const SizedBox(height: 95),
          const GetStartedText(),
          const Description(),
          CustomElevatedButton(
            text: 'Get Started',
            onPressed: () {
              Navigator.push(
                context,
                PageRouteAnimator(
                  child: const HomeView(),
                  routeAnimation: RouteAnimation.bottomLeftToTopRightWithFade,
                  //settings: const RouteSettings(arguments: 'I am going'),
                  curve: Curves.easeOut,
                ),
              );
            },
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

final Widget SplashImage = SvgPicture.asset("assets/Images/SplashImage.svg");
