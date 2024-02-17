import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class SkSingleAddress extends StatelessWidget {
  const SkSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return SkRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(SkSizes.md),
      backgroundColor: selectedAddress ? SkColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SkColors.darkenGrey
              : SkColors.grey,
      margin: const EdgeInsets.only(bottom: SkSizes.spaceBtwIteam),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? SkColors.light
                      : SkColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Divya Patel",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SkSizes.sm / 2),
              const Text("7896581234",maxLines: 1,overflow: TextOverflow.ellipsis),
              const SizedBox(height: SkSizes.sm / 2),
              const Text("120 shaktinagar nr harinagar 3 udhna surat",softWrap: true),

            ],
          )

        ],
      ),
    );
  }
}
