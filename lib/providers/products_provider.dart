import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_provider.g.dart';

List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Red BackPack',
    price: 60,
    image: 'assets/products/backpack.png',
  ),
  Product(
    id: '2',
    title: 'Drum',
    price: 40,
    image: 'assets/products/drum.png',
  ),
  Product(
    id: '3',
    title: 'Guitar',
    price: 88,
    image: 'assets/products/guitar.png',
  ),
  Product(
    id: '4',
    title: 'Jeans Pant',
    price: 33,
    image: 'assets/products/jeans.png',
  ),
  Product(
      id: '5',
      title: 'Karate Dress',
      price: 36,
      image: 'assets/products/karati.png'),
  Product(
    id: '6',
    title: 'Shorts',
    price: 23,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '7',
    title: 'Skates',
    price: 45,
    image: 'assets/products/skates.png',
  ),
  Product(
    id: '8',
    title: 'SuitCase',
    price: 90,
    image: 'assets/products/suitcase.png',
  ),
];

final reducedProductProvider = Provider((ref) {
  return allProducts.where((item) => item.price < 50).toList();
});

@riverpod
List<Product> product(Ref) {
  return allProducts;
}

@riverpod
List<Product> reduceProducts(Ref) {
  return allProducts.where((element) => element.price < 50).toList();
}
