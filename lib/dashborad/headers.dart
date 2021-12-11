import 'package:admin_panal/constants/constants.dart';
import 'package:admin_panal/constants/responcive_ui.dart';
import 'package:admin_panal/dashborad/search_bar.dart';
import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  const Headers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (!ResponciveUi.isMobile(context))
            Expanded(
              child: Text(
                'Dashboard',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          if (!ResponciveUi.isMobile(context) &&
              !ResponciveUi.isTablet(context))
            Spacer(flex: ResponciveUi.isDesktop(context) ? 2 : 1),
          SearchBar(size: size),
          Container(
            padding: EdgeInsets.all(size.width * .005),
            margin: EdgeInsets.only(
              left: size.width * 0.005,
            ),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(size.height * 0.01),
              border: Border.all(
                color: Colors.white10,
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/profile_pic.png',
                  ),
                  Text('Al Sayed Ahmed'),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
