import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/home/controllers/home_controller.dart';
import 'package:pet_app/view/home/widgets/appbar_widget.dart';
import 'package:pet_app/view/home/widgets/container_body.dart';
import 'package:pet_app/view/home/widgets/pet_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BodyContainer(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                physics: const BouncingScrollPhysics(),
                itemCount: controller.petList.length,
                itemBuilder: (context, index) {
                  return PetCard(pet: controller.petList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
