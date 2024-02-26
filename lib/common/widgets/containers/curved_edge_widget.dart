import 'package:asebmarket/features/shop/screens/home/widgets/custom_shapes/containers/curved_edge.dart';
import 'package:flutter/material.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomeCurvedEdge(),
      child: child,
    );
  }
}
