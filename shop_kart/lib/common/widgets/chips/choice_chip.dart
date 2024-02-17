import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/circular_container.dart';

import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../utils/constants/colors.dart';

class SkChoiceChip extends StatelessWidget {
  const SkChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SKHelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? SkColors.white : null),
        avatar: isColor ? SkCircularContainer(width: 50, height: 50,backgroundColor: SKHelperFunction.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? SKHelperFunction.getColor(text)! : null,
      
      ),
    );
  }
}
