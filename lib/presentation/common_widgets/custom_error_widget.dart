import 'package:flutter/cupertino.dart';

import '../utils/custom_colors.dart';
import '../utils/dimens.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorText;

  const CustomErrorWidget({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) => Visibility(
        visible: errorText.isNotEmpty,
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: Dimens.horizontalOffset),
          child: Center(
            child: Text(
              errorText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: CustomColors.mojo,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
}
