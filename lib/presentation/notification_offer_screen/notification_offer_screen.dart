import 'package:vivek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:vivek_s_application3/core/app_export.dart';

class NotificationOfferScreen extends StatelessWidget {
  const NotificationOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  _buildOfferItemRow(context,
                      offer: "The Best Title",
                      description:
                          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                      time: "April 30, 2014 1:01 PM"),
                  _buildOfferItemRow(context,
                      offer: "SUMMER OFFER 98% Cashback",
                      description:
                          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                      time: "April 30, 2014 1:01 PM"),
                  SizedBox(height: 5.v),
                  _buildOfferItemRow(context,
                      offer: "Special Offer 25% OFF",
                      description:
                          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                      time: "April 30, 2014 1:01 PM")
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Notification", margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildOfferItemRow(
    BuildContext context, {
    required String offer,
    required String description,
    required String time,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSort,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 94.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(offer,
                                style: theme.textTheme.titleSmall!.copyWith(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1))),
                            SizedBox(height: 10.v),
                            SizedBox(
                                width: 305.h,
                                child: Text(description,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                        color: appTheme.blueGray300,
                                        height: 1.80))),
                            SizedBox(height: 5.v),
                            Text(time,
                                style: CustomTextStyles.bodySmallOnPrimary10
                                    .copyWith(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1)))
                          ])))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
