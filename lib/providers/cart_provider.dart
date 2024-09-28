import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  // initial value
  @override
  Set<Product> build() {
    return <Product>{};
  }

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

@riverpod
int cartTotal(ref) {
  final cartProudcts = ref.watch(cartNotifierProvider);

  int total = 0;
  for (Product product in cartProudcts) {
    total += product.price;
  }
  return total;
}
