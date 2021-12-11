import 'package:flutter/material.dart';

class AddNewFiles extends StatelessWidget {
  const AddNewFiles({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.018,
              vertical: size.width * 0.012,
            ),
          ),
          label: Text('Add New'),
        ),
      ],
    );
  }
}
