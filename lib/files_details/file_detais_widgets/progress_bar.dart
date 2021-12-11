import 'package:admin_panal/constants/MyFiles.dart';
import 'package:flutter/material.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.width * 0.005,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            color: demoMyFiles[index!].color.withOpacity(.1),
          ),
        ),
        LayoutBuilder(
          builder: (context, contrains) => Container(
            width: contrains.maxWidth * (demoMyFiles[index!].percentage / 100),
            height: size.width * 0.005,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: demoMyFiles[index!].color,
            ),
          ),
        ),
      ],
    );
  }
}
