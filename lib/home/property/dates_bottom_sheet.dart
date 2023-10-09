import 'package:airbnb/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';


class DatesBottomSheet extends StatefulWidget {
  @override
  _DatesBottomSheetState createState() => _DatesBottomSheetState();
}

class _DatesBottomSheetState extends State<DatesBottomSheet> {
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.95,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top:4,),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close, size: 24, color: AppColors.grey_blue,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 8,),
                  Text(
                    Strings.dates,
                    style: AppStyles.sixteenVeryLightBlack,
                  ),
                ],
              ),
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "${selectedDates.duration.inDays}",
                ),
                ElevatedButton(
                  child: const Text("choose Dates"),
                  onPressed: () async{
                    final DateTimeRange? dateTimeRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000),
                    );
                    if (dateTimeRange != null) {
                      setState(() {
                        selectedDates = dateTimeRange;
                      });
                    }
                    },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
