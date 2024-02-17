import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class SkPrimaryHeaderContainer extends StatelessWidget {
  const SkPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SkCurvedEdgeWidget(
      child: Container(
        color: SkColors.primary,


        child: Stack(
          children: [
            ///background custom shape
            Positioned(top: -150, right: -250, child: SkCircularContainer(backgroundColor: SkColors.textWhite.withOpacity(0.1))),
            Positioned(top: -100, right: -300, child: SkCircularContainer(backgroundColor: SkColors.textWhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}