import 'package:admin_panal/constants/MyFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilesLogoAndMoreButtons extends StatelessWidget {
  const FilesLogoAndMoreButtons({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(
            size.width * 0.005,
          ),
          padding: EdgeInsets.all(
            size.width * 0.004,
          ),
          width: size.width > 400 && size.width <= 650
              ? size.width * 0.04
              : size.width * 0.03,
          height: size.width * 0.04,
          decoration: BoxDecoration(
              color: demoMyFiles[index!].color.withOpacity(.1),
              borderRadius: BorderRadius.circular(size.width * 0.007)),
          child: SvgPicture.asset(
            demoMyFiles[index!].svgSrc,
            color: demoMyFiles[index!].color,
            // width: size.width * 0.03,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
          ),
        ),
      ],
    );
  }
}
