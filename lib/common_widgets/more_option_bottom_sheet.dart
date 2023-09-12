import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/Images.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class MoreOptionsBottomSheet extends StatefulWidget {
  @override
  _MoreOptionsBottomSheetState createState() => _MoreOptionsBottomSheetState();
}

class _MoreOptionsBottomSheetState extends State<MoreOptionsBottomSheet> {
  final List<Map<String, dynamic>> listItems = [
    {
      'text': Strings.text_msg,
      'svgAssetPath': Images.msgs,
    },
    {
      'text': Strings.whatsapp,
      'svgAssetPath': Images.whatsapp,
    },
    {
      'text': Strings.phone_call,
      'svgAssetPath': Images.phone,
    },
  ];

  int selectedTileIndex = -1;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
               Text(
                  Strings.more_options,
                  style: AppStyles.semiBoldTextStyle,
                ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  Strings.choose_anotherway,
                  style: AppStyles.normalSmallTextStyle,
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: ListView.builder(
                  itemCount: listItems.length,
                  itemBuilder: (context, index) {
                    final item = listItems[index];
                    final isSelected = index == selectedTileIndex;
                    return Column(
                      children: [
                        ListTile(
                          leading: SvgPicture.asset(
                            item['svgAssetPath'],
                            width: 30,
                            height: 30,
                          ),
                          title: Text(item['text'], style: AppStyles.semiBoldBlueStyle),
                          trailing: isSelected
                              ? SvgPicture.asset(Images.black_circle)
                              : null,
                          onTap: () {
                            setState(() {
                              // Toggle the selected state
                              selectedTileIndex = isSelected ? -1 : index;
                            });
                          },
                        ),
                        const SizedBox(height: 10,),
                        const Divider(),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
