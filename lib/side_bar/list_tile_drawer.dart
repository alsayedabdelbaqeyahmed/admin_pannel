import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListTileDrawer extends StatelessWidget {
  final String title;
  final String svgSrc;
  final VoidCallback press;

  const ListTileDrawer({
    required this.press,
    required this.svgSrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
