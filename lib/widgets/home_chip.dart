import 'package:flutter/material.dart';

class HomeChip extends StatelessWidget {
  final String lable;
  const HomeChip({
    Key key,
    this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Chip(
        label: Text(
          '$lable',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        autofocus: false,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
