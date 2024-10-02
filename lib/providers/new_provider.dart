import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverporlearn/providers/products_provider.dart';

import '../model/model.dart';

part 'new_provider.g.dart';

// thats create future provider because i add future infront of function;
@riverpod
Future<List<Product>> item(ref) async {
  return await ref.watch(productProvider);
}

// i did not add some thing before the method so it will create a simple provider
@riverpod
hello(ref) {
  return 'hello world';
}


// i use here class method so it will create a NotifierProvider
@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() => state++;
}


