import 'package:flutter/material.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.face, color: Colors.black),
                Column(
                  children: const [
                    Text('Location',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    Text('Cameron St., Boston',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ),
        );
}
