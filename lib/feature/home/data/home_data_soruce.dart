import 'package:coffie_shop/core/constant/image_constiant.dart';
import 'package:coffie_shop/core/models/category_model.dart';
import 'package:coffie_shop/core/models/proudcts_model.dart';

class HomeDataSoruce {
  List<CategoryModel> get categories => [
    CategoryModel(id: 0, name: "All Coffee"),
    CategoryModel(id: 1, name: "Machiato"),
    CategoryModel(id: 2, name: "Latte"),
    CategoryModel(id: 3, name: "Americano"),
  ];
  List<ProudctsModel> get products => [
    ProudctsModel(
      id: 1,
      name: "Caffe Mocha",
      image: MyAppImage.product01,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 6.53,
      rate: 4.5,
    ),
    ProudctsModel(
      id: 2,
      name: "Caffe Mocha",
      image: MyAppImage.product02,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 2.53,
      rate: 4.5,
    ),
    ProudctsModel(
      id: 3,
      name: "Caffe Mocha",
      image: MyAppImage.product03,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 8.53,
      rate: 4.5,
    ),
    ProudctsModel(
      id: 4,
      name: "Caffe Mocha",
      image: MyAppImage.product04,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 5.53,
      rate: 4.5,
    ),
    ProudctsModel(
      id: 5,
      name: "Caffe Mocha",
      image: MyAppImage.product05,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo",
      type: "Deep Foam",
      price: 4.53,
      rate: 4.5,
    ),
  ];
}
