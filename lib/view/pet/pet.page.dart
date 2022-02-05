import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/home/controllers/home_controller.dart';
import 'package:pet_app/view/pet/widgets/adopt_btn.dart';
import 'package:pet_app/view/models/pet.dart';

import 'widgets/about_pet.dart';
import 'widgets/pet_header.dart';
import 'widgets/small_pet_pic_list.dart';

class PetPage extends StatelessWidget {
  PetPage({Key? key}) : super(key: key);

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final pet = ModalRoute.of(context)!.settings.arguments as Pet;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Visibility(
            visible: pet.favorite!,
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(6),
              padding: const EdgeInsets.all(6),
              child: const Icon(
                Icons.favorite,
                size: 28,
                color: AppColors.favoriteIcon,
              ),
              decoration: BoxDecoration(
                color: AppColors.favoriteIconBox,
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ],
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
          PetHeader(
            pet: pet,
            controller: controller,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 36),
            child: Row(
              children: [
                const SmallPetPictureList(),
                const Spacer(),
                Image.asset(
                  pet.mainPhoto!,
                  height: 215,
                  width: 215,
                ),
              ],
            ),
          ),
          const Spacer(),
          AboutPet(description: pet.description!),
          AdoptButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
