import 'package:flutter/material.dart';
import 'package:up_reps/constants/colors/colors.dart';

class NewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const NewAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: preto,
              ),
              onPressed: () {},
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(
                '/images/avatar.png',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
