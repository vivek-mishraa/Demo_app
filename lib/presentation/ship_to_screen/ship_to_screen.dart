import 'package:vivek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/shiptolist_item_widget.dart';
import 'package:vivek_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:vivek_s_application3/core/app_export.dart';

class ShipToScreen extends StatelessWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 23.v),
                child: Column(children: [
                  SizedBox(height: 4.v),
                  _buildShipToList(context)
                ])),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Ship To", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlusIcon,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildShipToList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ShiptolistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Next",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }
}
