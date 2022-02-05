import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';

class _ListLine extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  const _ListLine({
    Key? key,
    this.height = 4,
    this.width = 25,
    this.color = AppColors.listIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

class ListIcon extends StatelessWidget {
  const ListIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            _ListLine(),
            _ListLine(width: 18),
            _ListLine(),
          ],
        ),
      ),
    );
  }
}
