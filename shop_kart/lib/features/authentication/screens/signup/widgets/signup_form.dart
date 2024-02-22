import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/authentication/controller/signup/signup_controller.dart';
import 'package:shop_kart/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:shop_kart/utils/validators/validation.dart';


import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';


class SkSignupForm extends StatelessWidget {
  const SkSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          /// first & last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => SkValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: SkTexts.firstname, prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SkSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => SkValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: SkTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///username
          TextFormField(
            controller: controller.username,
            validator: (value) => SkValidator.validateEmptyText('User name', value),
            expands: false,
            decoration: const InputDecoration(labelText: SkTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///email
          TextFormField(
            controller: controller.email,
            validator: (value) => SkValidator.validateEmail(value),
            decoration: const InputDecoration(labelText: SkTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => SkValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(labelText: SkTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///password
          Obx(
            () => TextFormField(
              validator: (value) => SkValidator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: SkTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                  ),
              ),
            ),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),
          /// t&c check
          const SkTermsAndConditionCheck(),
          const SizedBox(height: SkSizes.spaceBtwSections),
          /// signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(SkTexts.createAccount)
            ),
          )
        ],
      ),
    );
  }
}

