import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:flutter/material.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(
            'https://cdn-icons-png.flaticon.com/512/5556/5556468.png'),
      ),
    );
  }
}
