import 'package:admin_panal/constants/MyFiles.dart';
import 'package:admin_panal/constants/constants.dart';
import 'package:admin_panal/constants/responcive_ui.dart';
import 'package:admin_panal/files_details/file_detais_widgets/add_new_files.dart';
import 'package:admin_panal/files_details/file_detais_widgets/file_info.dart';
import 'package:admin_panal/files_details/file_detais_widgets/recent_files_widget.dart';
import 'package:flutter/material.dart';

class FilesDetailsScreen extends StatelessWidget {
  const FilesDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.01),
      child: Column(
        children: [
          AddNewFiles(size: size),
          SizedBox(height: defaultPadding),
          ResponciveUi(
            desktob: FileDetailsGirdViewWidget(
              size: size,
              mainAxisSpacing: 0,
              crossAxisCount: 4,
              crossAxisSpacing:
                  size.width > 800 ? size.width * 0.0135 : size.width * 0.02,
              childAspectRatio: size.width > 1000 ? 1.15 : 1.4,
            ),
            tablet: FileDetailsGirdViewWidget(
              size: size,
              mainAxisSpacing: size.width > 560 && size.width <= 690
                  ? size.width * 0.02
                  : size.width * 0.04,
              crossAxisCount: size.width > 400 && size.width <= 690 ? 2 : 4,
              crossAxisSpacing:
                  size.width > 690 ? size.width * 0.0135 : size.width * 0.02,
              childAspectRatio: size.width > 560 && size.width <= 690
                  ? 2.2
                  : size.width > 560 && size.width <= 700
                      ? 1.1
                      : size.width > 400 && size.width <= 690
                          ? 1.7
                          : 1.1,
            ),
            mobile: FileDetailsGirdViewWidget(
              size: size,
              mainAxisSpacing: size.width * 0.03,
              crossAxisCount: 2,
              crossAxisSpacing: size.width * 0.04,
              childAspectRatio: 1.2,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            padding: EdgeInsets.all(size.width * 0.01),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(
                size.width * 0.01,
              ),
            ),
            child: RecentFilesWidget(size: size),
          )
        ],
      ),
    );
  }
}

class FileDetailsGirdViewWidget extends StatelessWidget {
  const FileDetailsGirdViewWidget({
    Key? key,
    required this.size,
    required this.childAspectRatio,
    required this.crossAxisCount,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
  }) : super(key: key);

  final Size size;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        print(size.width);
        return Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(size.height * 0.02),
          ),
          padding: EdgeInsets.all(size.width * 0.007),
          child: FilesInfoWidget(size: size, index: index),
        );
      },
      itemCount: demoMyFiles.length,
    );
  }
}
