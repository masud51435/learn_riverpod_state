import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/providers/cart_provider.dart';
import 'package:riverporlearn/providers/products_provider.dart';
import 'package:riverporlearn/screens/cart/cart_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProduct = ref.watch(productProvider);
    final cartProduct = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage sell Product'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            ),
            icon: Badge(
              backgroundColor: Colors.red,
              textColor: Colors.white,
              label: Text(cartProduct.length.toString()),
              child: const Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 250,
        ),
        itemCount: allProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  allProduct[index].image,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(height: 10),
                Text(
                  allProduct[index].title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '\$ ${allProduct[index].price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                if (cartProduct.contains(allProduct[index]))
                  OutlinedButton(
                    onPressed: () {
                      ref
                          .read(cartNotifierProvider.notifier)
                          .removeProduct(allProduct[index]);
                    },
                    child: const Text('Remove'),
                  ),
                if (!cartProduct.contains(allProduct[index]))
                  OutlinedButton(
                    onPressed: () {
                      ref
                          .read(cartNotifierProvider.notifier)
                          .addProduct(allProduct[index]);
                    },
                    child: const Text('Add Product'),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
