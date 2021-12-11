import 'package:admin_panal/constants/responcive_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StorageDetailsBoxRow extends StatelessWidget {
  final String assets;
  final Size size;
  final String title;

  final String files;

  final String filesSize;
  const StorageDetailsBoxRow(
    this.assets,
    this.size,
    this.title,
    this.files,
    this.filesSize,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              assets,
              width: size.height * 0.02,
            ),
            SizedBox(width: size.height * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: ResponciveUi.isTablet(context)
                        ? size.width * 0.03
                        : ResponciveUi.isDesktop(context)
                            ? size.width < 1000
                                ? size.width * 0.015
                                : size.width * 0.012
                            : size.width * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  files,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.white70,
                        fontSize: ResponciveUi.isTablet(context)
                            ? size.width * 0.03
                            : ResponciveUi.isDesktop(context)
                                ? size.width < 1000
                                    ? size.width * 0.015
                                    : size.width * 0.012
                                : size.width * 0.03,
                      ),
                ),
              ],
            ),
          ],
        ),
        Text(
          filesSize,
          style: TextStyle(
            fontSize: ResponciveUi.isTablet(context)
                ? size.width * 0.03
                : ResponciveUi.isDesktop(context)
                    ? size.width < 1000
                        ? size.width * 0.015
                        : size.width * 0.012
                    : size.width * 0.03,
          ),
        ),
      ],
    );
  }
}
