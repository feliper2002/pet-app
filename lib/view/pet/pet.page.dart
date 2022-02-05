import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/home/controllers/home_controller.dart';
import 'package:pet_app/view/home/widgets/adopt_btn.dart';
import 'package:pet_app/view/home/widgets/small_pet_pic_list.dart';
import 'package:pet_app/view/models/pet.dart';

class PetPage extends StatelessWidget {
  PetPage({Key? key}) : super(key: key);

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final pet = ModalRoute.of(context)!.settings.arguments as Pet;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.backArrow,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                  children: [
                    Icon(
                      pet.sex! == Sex.male ? Icons.male : Icons.female,
                      color: AppColors.sexIcon,
                      size: 36,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '${pet.age}, ${controller.getPetAge(pet.petAge!)}',
                      style: const TextStyle(
                        color: AppColors.petTextBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 36),
            child: Row(
              children: const [
                SmallPetPictureList(),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 23,
                    color: AppColors.petTextBlack,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  pet.description!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
          AdoptButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
