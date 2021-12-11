import 'package:admin_panal/dashborad/dashboard_scree.dart';
import 'package:admin_panal/side_bar/side_bar_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if ((defaultTargetPlatform == TargetPlatform.android) ||
        (defaultTargetPlatform == TargetPlatform.iOS)) {
      return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: SideBar(),
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
            start: size.width * 0.01,
            end: size.width * 0.01,
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => scaffoldKey.currentState!.openDrawer(),
                    icon: Icon(Icons.menu),
                  ),
                  homePageRow(isMobile: true),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: SideBar(),
        ),
        body: Padding(
            padding: EdgeInsetsDirectional.only(
              start: size.width * 0.01,
              end: size.width * 0.01,
            ),
            child: homePageRow(isMobile: false)),
      );
    }
  }

  Widget homePageRow({
    required bool isMobile,
  }) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // print(constraints.maxWidth.toInt());
        if (constraints.maxWidth.toInt() <= 1000 && isMobile == false) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => scaffoldKey.currentState!.openDrawer(),
                  icon: Icon(Icons.menu),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: DashBoardScreen(),
                    ),
                  ],
                ),
              ],
            ),
          );
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isMobile == false)
              Expanded(
                flex: 1,
                child: SideBar(),
              ),
            Expanded(
              child: DashBoardScreen(),
              flex: 5,
            ),
          ],
        );
      },
    );
  }
}
