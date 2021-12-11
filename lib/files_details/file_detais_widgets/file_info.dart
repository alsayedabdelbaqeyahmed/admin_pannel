import 'package:admin_panal/constants/MyFiles.dart';
import 'package:admin_panal/files_details/file_detais_widgets/progress_bar.dart';
import 'package:flutter/material.dart';

import 'files_logo_more_button.dart';

class FilesInfoWidget extends StatelessWidget {
  const FilesInfoWidget({
    Key? key,
    required this.size,
    this.index,
  }) : super(key: key);

  final Size size;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilesLogoAndMoreButtons(size: size, index: index),
        Text(
          demoMyFiles[index!].title,
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
        ProgressBarWidget(size: size, index: index),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${demoMyFiles[index!].numOfFiles}Files',
              maxLines: 1,
            ),
            Text(
              demoMyFiles[index!].totalStorage,
              maxLines: 1,
              style: TextStyle(color: Colors.white70),
            ),
          ],
        )
      ],
    );
  }
}
