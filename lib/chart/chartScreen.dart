import 'package:admin_panal/constants/constants.dart';
import 'package:flutter/material.dart';

import 'chart_digrame.dart';
import 'storage_details_box_row.dart';

class ChartsScreen extends StatelessWidget {
  const ChartsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.01),
      padding: EdgeInsets.all(size.height * 0.01),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: size.width > 200 && size.width <= 2000
                  ? size.width * 0.04
                  : size.width * 0.015,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.08),
          ChartDigrameWidget(),
          SizedBox(height: size.height * 0.08),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              storageDetailsBox(
                size: size,
                title: 'Documents File',
                files: '1328 Files',
                filesSize: '18GB',
                assets: "assets/icons/Documents.svg",
                context: context,
              ),
              storageDetailsBox(
                size: size,
                title: 'Media File',
                files: '1600 Files',
                filesSize: '22GB',
                assets: 'assets/icons/media.svg',
                context: context,
              ),
              storageDetailsBox(
                size: size,
                title: 'Other File',
                files: '1100 Files',
                filesSize: '12GB',
                assets: "assets/icons/folder.svg",
                context: context,
              ),
              storageDetailsBox(
                size: size,
                title: 'Unknown File',
                files: '980 Files',
                filesSize: '8GB',
                assets: "assets/icons/unknown.svg",
                context: context,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget storageDetailsBox(
      {Size? size,
      String? title,
      String? files,
      String? filesSize,
      String? assets,
      BuildContext? context}) {
    return Container(
      padding: EdgeInsets.only(
        bottom: size!.height * 0.015,
        top: size.height * 0.015,
        left: size.width * 0.015,
        right: size.width * 0.015,
      ),
      margin: EdgeInsets.all(size.width * 0.004),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.01),
        border: Border.all(
          color: primaryColor.withOpacity(.3),
        ),
      ),
      child: StorageDetailsBoxRow(
        assets!,
        size,
        title!,
        files!,
        filesSize!,
      ),
    );
  }
}
