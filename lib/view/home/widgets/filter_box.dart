import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/models/filter_option.dart';

class FilterBox extends StatelessWidget {
  final FilterOption option;
  const FilterBox({
    Key? key,
    required this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: !option.selected! ? Colors.white : AppColors.mainRed,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Visibility(
            visible: option.iconPath != null,
            child: Image.asset(
              option.iconPath!,
              color: option.selected! ? Colors.white : AppColors.backArrow,
              height: 25,
              width: 25,
            ),
          ),
          Visibility(
            visible: (option.title != null),
            child: Container(
              margin: const EdgeInsets.only(left: 6),
              child: Text(
                option.title ?? "",
                style: TextStyle(
                  color: option.selected! ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
