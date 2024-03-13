import 'package:flutter/material.dart';
import 'package:vivek_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ConditionchipviewItemWidget extends StatelessWidget {
  const ConditionchipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.all(16.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "New",
        style: TextStyle(
          color: appTheme.blueGray300,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
      selectedColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          5.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
