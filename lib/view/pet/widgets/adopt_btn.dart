import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';

class AdoptButton extends StatelessWidget {
  final Function? onTap;
  const AdoptButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function(),
      child: CustomPaint(
        painter: _AdoptButtonPaint(),
        child: Stack(
          children: [
            Container(
              height: 100,
            ),
            Positioned(
              right: 50,
              top: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/pet_feet.png',
                    color: Colors.white,
                    height: 25,
                    width: 25,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'ADOPT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AdoptButtonPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final buttonPaint = Paint()..color = AppColors.adoptBtn;

    final btnRect = Rect.fromCenter(
      center: Offset(size.width * .8, size.height * .65),
      width: size.width * .65,
      height: 80,
    );

    final button = RRect.fromRectAndCorners(
      btnRect,
      topLeft: const Radius.circular(60),
    );

    canvas.drawRRect(button, buttonPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
