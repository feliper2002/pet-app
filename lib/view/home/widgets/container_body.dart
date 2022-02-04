import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';

class BodyContainer extends StatelessWidget {
  final Widget? child;
  const BodyContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: child,
      decoration: const BoxDecoration(
          color: AppColors.scaffoldBg,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          )),
    );
  }
}
