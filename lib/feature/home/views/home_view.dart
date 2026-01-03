import 'package:coffie_shop/core/shared/buttons.dart';
import 'package:coffie_shop/feature/home/data/home_data_soruce.dart';
import 'package:coffie_shop/feature/home/widgets/My_home_banner.dart';
import 'package:coffie_shop/feature/home/widgets/My_search_widget.dart'
    show MySearchWidget;
import 'package:coffie_shop/feature/home/widgets/home_backGround.dart';
import 'package:coffie_shop/feature/home/widgets/location_widget.dart';
import 'package:coffie_shop/feature/home/widgets/my_products_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeDataSoruce homeDataSoruce = HomeDataSoruce();

  int selectdCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackGround(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                // === Location Widget ====
                LocationWidget(),
                const SizedBox(height: 24),
                MySearchWidget(),
                // === Banner ===
                const SizedBox(height: 24),
                MyHomeBanner(),
                const SizedBox(height: 24),
                SizedBox(
                  height: 35,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: homeDataSoruce.categories.length,
                    itemBuilder: (context, index) {
                      final category = homeDataSoruce.categories[index];
                      return MyCategoryButton(
                        isSelected: category.id == selectdCategory,
                        onTap: () {
                          selectdCategory = category.id;
                          setState(() {});
                        },
                        category: category,
                      );
                    },
                  ),
                ),

                Expanded(
                  child: GridView.builder(
                    // itemCount: 1,
                    itemCount: homeDataSoruce.products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.7,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      final prodcuts = homeDataSoruce.products[index];

                      return MyProductItem(prodcuts: prodcuts);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
