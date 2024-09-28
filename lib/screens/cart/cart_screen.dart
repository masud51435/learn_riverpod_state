import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/providers/cart_provider.dart';
import 'package:riverporlearn/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProduct = ref.watch(cartNotifierProvider);
    final cartTotal = ref.watch(cartTotalProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart screen'),
      ),
      body: (cartProduct.isEmpty)
          ? const Center(
              child: Text('Cart is empty'),
            )
          : Column(
              children: [
                Column(
                  children: cartProduct.map(
                    (product) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              product.image,
                              height: 70,
                              width: 70,
                            ),
                            const Spacer(),
                            Text(
                              product.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '\$ ${product.price}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                ref
                                    .read(cartNotifierProvider.notifier)
                                    .removeProduct(product);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
                const Spacer(),
                BottomAppBar(
                  child: Row(
                    children: [
                      const Text(
                        'Total Price ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        cartTotal.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
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
