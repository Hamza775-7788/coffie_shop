import 'package:coffie_shop/core/models/category_model.dart';
import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyGenralButton extends StatelessWidget {
  final String name;
  final Function()? onPressed;
  const MyGenralButton({
    required this.name,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 56,
      color: MyAppColor.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      onPressed: onPressed,
      child: Text(
        name,
        style: MyTextStyle.normalTitleText(color: Colors.white),
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final String icon;
  final Function() onTap;
  const MyIconButton({required this.icon, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: MyAppColor.primaryColor,
        ),
        child: Image.asset(icon, color: Colors.white, height: 20, width: 20),
      ),
    );
  }
}


class MyCategoryButton extends StatelessWidget {
  final bool isSelected;
  final Function() onTap;
  const MyCategoryButton({
    required this.isSelected,
    required this.onTap,
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected
              ? MyAppColor.primaryColor
              : Color(0xffEDEDED).withAlpha(300),
        ),
        child: Text(
          category.name,
          style: isSelected
              ? MyTextStyle.normalTitleText(color: Colors.white)
              : MyTextStyle.normalTitleText(size: 14),
        ),
      ),
    );
  }
}
