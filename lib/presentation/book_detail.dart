import 'package:auto_route/auto_route.dart';
import 'package:book_list/domain/model/product_model/product_model.dart';
import 'package:book_list/utils/app_primary_button.dart';
import 'package:book_list/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BookDetail extends HookWidget {
  const BookDetail({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppMetric.defaultHorizontalPadding),
          child: Column(
            children: [
              Row(
                children: [
                  backButton(context),
                  const Spacer(),
                  const Icon(Icons.shopify_outlined),
                ],
              ),
              SizedBox(
                height: AppMetric.sectionSpacing,
              ),
              Container(
                width: AppMetric.screenWidth / 1.5,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppMetric.borderRadius)),
                child: Image.network(productModel.image),
              ),
              SizedBox(
                height: AppMetric.sectionSpacing,
              ),
              AppText.title(productModel.title),
              SizedBox(
                height: AppMetric.largeSpacing,
              ),
              AppText.subTitle(
                productModel.description,
                maxLines: 4,
              ),
              SizedBox(
                height: AppMetric.largeSpacing,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SecondPrimaryButton(title: 'Bussiness', onPressed: () {}),
                  SecondPrimaryButton(title: 'Economics', onPressed: () {}),
                  SecondPrimaryButton(title: 'print', onPressed: () {}),
                ],
              ),
              const Spacer(),
              PrimaryButtonWidget(
                title: 'Buy for ${productModel.price}\$',
                colorButton: AppColor.neutralGreyWhite,
                colors: AppColor.neutralBlack,
                onPressed: () {},
              ),
              SizedBox(
                height: AppMetric.largeSpacing,
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector backButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pop();
      },
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.semanticBlue,
          ),
          AppText.button(
            'Book list',
            color: AppColor.semanticBlue,
          ),
        ],
      ),
    );
  }
}
