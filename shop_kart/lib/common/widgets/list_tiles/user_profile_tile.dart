import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SkCircularImage(image: SkImages.user,width: 50,height: 50,padding: 0),
      title: Text('Shubham', style: Theme.of(context).textTheme.headlineMedium!.apply(color: SkColors.white)),
      subtitle: Text('support@shopkart.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: SkColors.white)),
      trailing: IconButton(onPressed: () {} , icon: const Icon(Iconsax.edit,color: SkColors.white)),

    );
  }
}
