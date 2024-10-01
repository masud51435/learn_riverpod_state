import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/providers/new_provider.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    print('page rebuild');
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ref.watch(counterProvider).toString()),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () =>
                      ref.read(counterProvider.notifier).increment(),
                  child: const Text('increment'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
