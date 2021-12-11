import 'package:admin_panal/constants/constants.dart';
import 'package:admin_panal/constants/responcive_ui.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartDigrameWidget extends StatelessWidget {
  const ChartDigrameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<PieChartSectionData> chartSections = [
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: Color(0xFF26E5FF),
        value: 20,
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        color: Color(0xFFFFCF26),
        value: 10,
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        color: Color(0xFFEE2727),
        value: 15,
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 13,
      ),
    ];
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.2,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: ResponciveUi.isTablet(context)
                  ? size.width * 0.15
                  : ResponciveUi.isDesktop(context)
                      ? size.width * 0.065
                      : ResponciveUi.isTablet(context)
                          ? size.width * 0.3
                          : size.width * 0.2,
              sectionsSpace: 0,
              startDegreeOffset: -90,
              sections: chartSections,
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '29.1',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      height: size.height * 0.001,
                    ),
              ),
              Text(
                'of 128GB',
              ),
            ],
          ),
        )
      ],
    );
  }
}
