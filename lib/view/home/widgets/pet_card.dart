import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/home/controllers/home_controller.dart';
import 'package:pet_app/view/models/pet.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  PetCard({Key? key, required this.pet}) : super(key: key);

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .17,
      width: size.width * .7,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight,
                width: 120,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pet.name!),
              Text(pet.type!),
              Row(
                children: [
                  Text(controller.getPetSex(pet.sex!)),
                  Text('${pet.age}, ${controller.getPetAge(pet.petAge!)}'),
                ],
              ),
              Text(
                  '${pet.distance} ${controller.getPetDistance(pet.petDistanceType!)}'),
            ],
          ),
          const Spacer(),
          const Icon(Icons.favorite, color: AppColors.favoriteIcon),
        ],
      ),
    );
  }
}
