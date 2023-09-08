import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';

class ListItem extends StatefulWidget {
  final String imagePath;
  final String text;

  ListItem({
    required this.imagePath,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        // Handle tap on list item
      },
      child: Column(
        children: [
          Container(
            width: 100,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                bottom: BorderSide(
                  color: isSelected ? Colors.black : Colors.grey.withOpacity(0.10),
                  width: isSelected ? 2.0 : 1.0,
                ),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: SvgPicture.asset(
                    widget.imagePath,
                    width: 38,
                    height: 38,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.text,
                  textAlign: TextAlign.center, // Center the text
                  style: AppStyles.listTextStyle
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
