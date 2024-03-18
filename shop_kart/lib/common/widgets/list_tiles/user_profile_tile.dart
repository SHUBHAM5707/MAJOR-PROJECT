import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/persionalization/controlles/user_controller.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const SkCircularImage(image: SkImages.user,width: 50,height: 50,padding: 0),
      title: Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineMedium!.apply(color: SkColors.white)),
      subtitle: Text(controller.user.value.email, style: Theme.of(context).textTheme.bodyMedium!.apply(color: SkColors.white)),
      trailing: IconButton(onPressed: onPressed , icon: const Icon(Iconsax.edit,color: SkColors.white)),

    );
  }
}
