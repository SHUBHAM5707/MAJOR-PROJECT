import 'package:flutter/cupertino.dart';

import 'curved_edges.dart';

class SkCurvedEdgeWidget extends StatelessWidget {
  const SkCurvedEdgeWidget({
    super.key, this.child,

  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: SKCustomCurvedEdges(),
        child:child
    );
  }
}