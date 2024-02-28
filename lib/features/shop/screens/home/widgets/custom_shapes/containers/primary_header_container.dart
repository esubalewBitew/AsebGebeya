import 'package:asebmarket/features/shop/screens/home/widgets/custom_shapes/containers/curve_edge_widget.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:asebmarket/features/shop/screens/home/widgets/custom_shapes/containers/curve_edge_widget.dart';

class TPrimaryheaderContainer extends StatelessWidget {
  const TPrimaryheaderContainer(
      {super.key, required this.child, this.height = 400});

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return TCurvedCustomWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Positioned(
                  top: -80,
                  right: -170,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(300)),
                        color: Color.fromARGB(255, 101, 118, 199)),
                  )),
              Positioned(
                  top: 100,
                  right: -170,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(300)),
                        color: Color.fromARGB(255, 126, 142, 221)),
                  )),
              child
            ],
          ),
        ),
      ),
    );
  }
}
