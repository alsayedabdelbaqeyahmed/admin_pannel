import 'package:admin_panal/chart/chartScreen.dart';
import 'package:admin_panal/constants/responcive_ui.dart';

import 'package:admin_panal/dashborad/headers.dart';

import 'package:admin_panal/files_details/files_details_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: size.width * 0.01,
        top: size.width * 0.005,
      ),
      child: !ResponciveUi.isTablet(context) && !ResponciveUi.isMobile(context)
          ? SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Headers(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: FilesDetailsScreen(),
                        ),
                        Expanded(
                          child: ChartsScreen(),
                          flex: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Headers(),
                FilesDetailsScreen(),
                ChartsScreen(),
              ],
            ),
    );
  }
}
