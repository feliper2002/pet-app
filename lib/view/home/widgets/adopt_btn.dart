import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';

class AdoptButton extends StatelessWidget {
  const AdoptButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _AdoptButtonPaint(),
      child: Stack(
        children: [
          Container(
            height: 100,
          ),
          const Positioned(
            right: 60,
            top: 55,
            child: Text(
              'ADOPT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
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
