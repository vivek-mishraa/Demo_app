import 'package:vivek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:vivek_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/widget_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vivek_s_application3/widgets/custom_rating_bar.dart';
import 'widgets/sizes_item_widget.dart';
import 'widgets/bluelist_item_widget.dart';
import 'widgets/products1_item_widget.dart';
import 'widgets/recommended_item_widget.dart';
import 'package:vivek_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:vivek_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 12.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildProductOverview(context),
                                    SizedBox(height: 22.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("Select Size",
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 13.v),
                                    _buildSizes(context),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("Select Color",
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 12.v),
                                    _buildBlueList(context),
                                    SizedBox(height: 24.v),
                                    _buildSpecifications(context),
                                    SizedBox(height: 20.v),
                                    _buildReview(context),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("You Might Also Like",
                                            style:
                                                CustomTextStyles.titleSmall_1)),
                                    SizedBox(height: 11.v),
                                    _buildRecommended(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildAddToCart(context)));
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
            text: "Nike Air Max 270 Rea...",
            margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNavExplore,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 15.h),
              onTap: () {
                onTapSearchIcon(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMoreIcon,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 31.h))
        ]);
  }

  /// Section Widget
  Widget _buildProductOverview(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CarouselSlider.builder(
          options: CarouselOptions(
              height: 238.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              }),
          itemCount: 1,
          itemBuilder: (context, index, realIndex) {
            return WidgetItemWidget();
          }),
      SizedBox(height: 16.v),
      Align(
          alignment: Alignment.center,
          child: SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 1,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: theme.colorScheme.primary.withOpacity(1),
                      dotColor: appTheme.blue50,
                      dotHeight: 8.v,
                      dotWidth: 8.h)))),
      SizedBox(height: 15.v),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: SizedBox(
                            width: 275.h,
                            child: Text("Nike Air Zoom Pegasus 36 Miami",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleLargeOnPrimary
                                    .copyWith(height: 1.50)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgLoveIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin:
                            EdgeInsets.only(left: 44.h, top: 2.v, bottom: 33.v))
                  ]))),
      SizedBox(height: 8.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: CustomRatingBar(initialRating: 4, itemSize: 16)),
      SizedBox(height: 16.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("299,43", style: theme.textTheme.titleLarge))
    ]);
  }

  /// Section Widget
  Widget _buildSizes(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 48.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16.h);
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SizesItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildBlueList(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 48.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16.h);
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return BluelistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildSpecifications(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Specification", style: theme.textTheme.titleSmall),
              SizedBox(height: 12.v),
              _buildStyle(context,
                  styleText: "Shown:",
                  styleCodeText: "Laser Blue/Anthracite/Watermelon/White"),
              SizedBox(height: 13.v),
              _buildStyle(context,
                  styleText: "Style:", styleCodeText: "CD0113-400"),
              SizedBox(height: 19.v),
              Container(
                  width: 320.h,
                  margin: EdgeInsets.only(right: 22.h),
                  child: Text(
                      "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(height: 1.80)))
            ])));
  }

  /// Section Widget
  Widget _buildReview(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _buildStyle(context,
                  styleText: "Review Product",
                  styleCodeText: "See More", onTapStyleCodeText: () {
                onTapTxtStyleCodeText(context);
              }),
              SizedBox(height: 8.v),
              Row(children: [
                CustomRatingBar(initialRating: 4, itemSize: 16),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("4.5",
                        style: CustomTextStyles.labelMediumBluegray300)),
                Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child:
                        Text("(5 Review)", style: CustomTextStyles.bodySmall10))
              ]),
              SizedBox(height: 16.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgProfilePicture,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    radius: BorderRadius.circular(24.h)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("James Lawson",
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 4.v),
                          CustomRatingBar(initialRating: 4, itemSize: 16)
                        ]))
              ]),
              SizedBox(height: 18.v),
              SizedBox(
                  width: 339.h,
                  child: Text(
                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodySmall!.copyWith(height: 1.80))),
              SizedBox(height: 13.v),
              SizedBox(
                  height: 72.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(right: 103.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 12.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Products1ItemWidget();
                      })),
              SizedBox(height: 16.v),
              Text("December 10, 2016", style: CustomTextStyles.bodySmall10)
            ])));
  }

  /// Section Widget
  Widget _buildRecommended(BuildContext context) {
    return SizedBox(
        height: 238.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return RecommendedItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "Add To Cart",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Common widget
  Widget _buildStyle(
    BuildContext context, {
    required String styleText,
    required String styleCodeText,
    Function? onTapStyleCodeText,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(styleText,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1)))),
      GestureDetector(
          onTap: () {
            onTapStyleCodeText!.call();
          },
          child: Padding(
              padding: EdgeInsets.only(left: 234.h),
              child: Text(styleCodeText,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.blueGray300))))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapSearchIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the reviewProductScreen when the action is triggered.
  onTapTxtStyleCodeText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewProductScreen);
  }
}
