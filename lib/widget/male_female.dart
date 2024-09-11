import 'package:bmi_do/uitils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cubits/app_cubit/app_cubit.dart';

class ImageSelectionWidget extends StatelessWidget {
  const ImageSelectionWidget({
    super.key,
    required this.isMaleSelected,
    required this.isFamaleSelected,
    required this.onTapFamle,
    required this.onTapMale,
  });
  final bool isMaleSelected;
  final bool isFamaleSelected;
  final Function() onTapFamle;
  final Function() onTapMale;

  @override
  Widget build(BuildContext context) {
    AppCubit Get = AppCubit.get(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTapMale,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: isMaleSelected ? AppColor.Kprimary : Colors.transparent,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SvgPicture.asset(
                  'assets/Images/Male.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTapFamle,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    isFamaleSelected ? AppColor.Kprimary : Colors.transparent,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SvgPicture.asset(
                  'assets/Images/Female.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
