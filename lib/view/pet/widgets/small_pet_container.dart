import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';

class SmallPetContainer extends StatelessWidget {
  final String? path;
  const SmallPetContainer({
    Key? key,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.smallPetContainerBorder, width: 1),
      ),
    );
  }
}
