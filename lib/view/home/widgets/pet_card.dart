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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
      child: Container(
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
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pet.name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  pet.type!,
                  style: const TextStyle(),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      controller.getPetSex(pet.sex!),
                      style: const TextStyle(
                        color: AppColors.textGrey,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${pet.age}, ${controller.getPetAge(pet.petAge!)}',
                      style: const TextStyle(
                        color: AppColors.textGrey,
                      ),
                    ),
                  ],
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Icon(pet.favorite! ? Icons.favorite : Icons.favorite_outline,
                color:
                    pet.favorite! ? AppColors.favoriteIcon : AppColors.textGrey,
                size: 28),
          ],
        ),
      ),
    );
  }
}
