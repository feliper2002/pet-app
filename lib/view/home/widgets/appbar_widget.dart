import 'package:flutter/material.dart';
import 'package:pet_app/utils/colors.dart';
import 'package:pet_app/view/home/widgets/list_icon.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Row(
              children: [
                const ListIcon(),
                const Spacer(),
                Column(
                  children: const [
                    Text('Location',
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 14,
                        )),
                    Text('Cameron St., Boston',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.red,
                  backgroundImage:
                      Image.asset('assets/images/profile.jpeg').image,
                ),
              ],
            ),
          ),
        );
}
