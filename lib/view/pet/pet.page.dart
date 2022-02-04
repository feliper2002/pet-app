import 'package:flutter/material.dart';
import 'package:pet_app/view/models/pet.dart';

class PetPage extends StatelessWidget {
  const PetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pet = ModalRoute.of(context)!.settings.arguments as Pet;

    return const Scaffold();
  }
}
