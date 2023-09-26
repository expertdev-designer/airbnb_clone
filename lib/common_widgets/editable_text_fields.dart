import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class EditableTextFields extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool isEditing;
  final TextEditingController controller;

  const EditableTextFields({
    Key? key,
    required this.label,
    required this.initialValue,
    required this.isEditing,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: TextField(
          controller: controller,
          readOnly: !isEditing, // Disable editing when not in edit mode
          decoration: InputDecoration(
            labelText: label,
            labelStyle: AppStyles.greyfourteenStyle,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          cursorColor: Colors.grey, // Set cursor color
          textAlignVertical: TextAlignVertical.bottom,
        ),
      ),
    );
  }
}
