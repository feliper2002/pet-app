import 'package:flutter/material.dart';

import 'small_pet_container.dart';

class SmallPetPictureList extends StatelessWidget {
  final List<String>? imagesPaths;
  const SmallPetPictureList({
    Key? key,
    this.imagesPaths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: 60,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return SmallPetContainer(
            path: imagesPaths != null ? imagesPaths![index] : null,
          );
        },
      ),
    );
  }
}
