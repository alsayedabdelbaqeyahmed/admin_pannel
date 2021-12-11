import 'package:admin_panal/constants/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(size.width * .006),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(size.width * 0.005),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.005),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.height * 0.01),
              borderSide: BorderSide.none,
            ),
            hintText: 'search',
            filled: true,
            fillColor: secondaryColor,
          ),
        ),
      ),
    );
  }
}
