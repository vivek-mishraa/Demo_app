import 'package:flutter/material.dart';
import 'package:vivek_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class OfferbannerItemWidget extends StatelessWidget {
  const OfferbannerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPromotionImage,
            height: 206.v,
            width: 343.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 110.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 209.h,
                    child: Text(
                      "Super Flash Sale\n50% Off",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(right: 59.h),
                    child: Row(
                      children: [
                        Container(
                          width: 42.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.h,
                            vertical: 8.v,
                          ),
                          decoration:
                              AppDecoration.fillOnPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "08",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 10.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            ":",
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        ),
                        Container(
                          width: 42.h,
                          margin: EdgeInsets.only(left: 4.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.h,
                            vertical: 8.v,
                          ),
                          decoration:
                              AppDecoration.fillOnPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "34",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 10.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            ":",
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
                          ),
                        ),
                        Container(
                          width: 42.h,
                          margin: EdgeInsets.only(left: 4.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 8.v,
                          ),
                          decoration:
                              AppDecoration.fillOnPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "52",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
