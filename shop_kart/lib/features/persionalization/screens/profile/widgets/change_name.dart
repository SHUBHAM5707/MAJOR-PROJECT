import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/features/persionalization/screens/profile/controller/update_name_controller.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/validators/validation.dart';


class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: SkAppBar(
        showBackArrow: true,
        title: Text('change name',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Use real name for easy verification',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: SkSizes.spaceBtwIteam),

            Form(
              key: controller.updateUserNameFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.firstName,
                    validator: (value) => SkValidator.validateEmptyText('First name', value),
                    expands: false,
                    decoration: const InputDecoration(labelText: SkTexts.firstname, prefixIcon: Icon(Iconsax.user)),
                  ),
                  const SizedBox(height: SkSizes.spaceBtwInputFields),
                  TextFormField(
                    controller: controller.lastName,
                    validator: (value) => SkValidator.validateEmptyText('Last name', value),
                    expands: false,
                    decoration: const InputDecoration(labelText: SkTexts.firstname, prefixIcon: Icon(Iconsax.user)),
                  ),
                ],
              ),),
            const SizedBox(height: SkSizes.spaceBtwSections),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.updateUserName(),
                  child: const Text(SkTexts.save)
              ),
            )
          ],
        ),
      ),
    );
  }
}
