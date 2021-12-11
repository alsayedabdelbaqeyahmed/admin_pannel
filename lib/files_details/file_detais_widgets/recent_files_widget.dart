import 'package:admin_panal/constants/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFilesWidget extends StatelessWidget {
  const RecentFilesWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Files",
          style: TextStyle(
            fontSize: size.width > 200 && size.width <= 2000
                ? size.width * 0.045
                : size.width * 0.025,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: DataTable(
            columnSpacing: size.width * 0.01,
            horizontalMargin: 0,
            columns: [
              DataColumn(
                label: Text("File Name"),
              ),
              DataColumn(
                label: Text("Date"),
              ),
              DataColumn(
                label: Text("Size"),
              ),
            ],
            rows: [
              ...List.generate(
                demoRecentFiles.length,
                (index) =>
                    dataRow(fileInfo: demoRecentFiles[index], index: index),
              ),
            ],
          ),
        )
      ],
    );
  }

  DataRow dataRow({required int index, required RecentFile fileInfo}) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.icon,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.01,
                ),
                child: Text(fileInfo.title),
              )
            ],
          ),
        ),
        DataCell(
          Text(
            fileInfo.date,
          ),
        ),
        DataCell(
          Text(
            fileInfo.size,
          ),
        ),
      ],
    );
  }
}
