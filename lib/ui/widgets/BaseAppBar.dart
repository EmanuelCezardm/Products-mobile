import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BaseText.dart';

class BaseAppBar extends StatelessWidget {
  final String title;
  final Color color;
  BaseAppBar({
    @required this.title,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.only(
        top: 40,
        right: 24,
        left: 16,
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 36,
              color: this.color,
            ),
          ),
          BaseText(
            text: this.title,
            color: this.color,
            fontSize: 36,
            isBold: true,
          ),
        ],
      ),
    );
  }
}
