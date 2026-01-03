import 'package:coffie_shop/core/constant/image_constiant.dart';
import 'package:coffie_shop/core/models/proudcts_model.dart';
import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProductItem extends StatelessWidget {
  const MyProductItem({super.key, required this.prodcuts});

  final ProudctsModel prodcuts;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,

            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.asset(prodcuts.image),
            ),
          ),
          SizedBox(height: 8),
          Text(prodcuts.name, style: MyTextStyle.normalTitleText()),
          SizedBox(height: 4),
          Text(prodcuts.type, style: MyTextStyle.subTitleText()),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${prodcuts.price}",
                style: MyTextStyle.normalTitleText(),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(MyAppIcons.plus, height: 32, width: 32),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
