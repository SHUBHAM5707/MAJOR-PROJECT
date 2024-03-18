import 'package:flutter/material.dart ';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/persionalization/controlles/user_controller.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/validators/validation.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(title: const Text('Re-Authencate user')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Form(
              key: controller.reAuthFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      TextFormField(
                        controller: controller.verifyEmail,
                        validator: SkValidator.validateEmail,
                        decoration: const InputDecoration(
                            labelText: SkTexts.email, prefixIcon: Icon(Iconsax.user)),
                ),

                    Obx(
                      () =>TextFormField(
                        obscureText: controller.hidePassword.value,
                        controller: controller.verifyPassword,
                        validator: (value) => SkValidator.validateEmptyText('password', value),
                        decoration: InputDecoration(
                            labelText: SkTexts.password,
                            prefixIcon: const Icon(Iconsax.password_check),
                            suffixIcon: IconButton(
                                onPressed: () => controller.hidePassword.value =!controller.hidePassword.value,
                                icon: const Icon(Iconsax.eye_slash)
                            )
                        ),
                      ),
                    ),

              const SizedBox(height: SkSizes.spaceBtwSections),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.reAuthenticateEmailAndPassword(),
                      child: const Text(SkTexts.verify)
                  ),
                ),
              ])
          ),
        ),
      ),
    );
  }
}
