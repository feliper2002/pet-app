import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/home/controllers/home_controller.dart';
import 'package:pet_app/view/models/pet.dart';

class PetHeader extends StatelessWidget {
  final Pet pet;
  final HomeController controller;
  const PetHeader({
    Key? key,
    required this.pet,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pet.name!,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 36,
                  color: AppColors.petTextBlack,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                pet.type!,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: AppColors.petTextBlack,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: AppColors.favoriteIcon,
                    size: 20,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '${pet.distance} ${controller.getPetDistance(pet.petDistanceType!)}',
                    style: const TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Transform.rotate(
                angle: (pet.sex! == Sex.female) ? _rotateRadians(-130) : 0,
                child: Icon(
                  pet.sex! == Sex.male ? Icons.male : Icons.female,
                  color: AppColors.sexIcon,
                  size: 48,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '${pet.age}, ${controller.getPetAge(pet.petAge!)}',
                style: const TextStyle(
                  color: AppColors.petTextBlack,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double _rotateRadians(double degrees) {
    final radians = degrees * (pi / 180);
    return radians;
  }
}
