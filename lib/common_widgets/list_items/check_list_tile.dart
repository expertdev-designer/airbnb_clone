import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CheckListTile extends StatefulWidget {
  final String title;
  final TextStyle? textStyle;

  const CheckListTile({Key? key, required this.title, this.textStyle}) : super(key: key);

  @override
  State<CheckListTile> createState() => _CheckListTileState();
}

class _CheckListTileState extends State<CheckListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Row(
        children: [
          Text(
            widget.title,
            style: widget.textStyle,
          ),
          Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isChecked ? AppColors.very_lightBlack : AppColors.very_light_grey,
              ),
              child: isChecked
                  ? Icon(
                Icons.check,
                color: AppColors.color_white,
              )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
