import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverporlearn/model/pull_to_refresh_model.dart';
import 'package:riverporlearn/providers/pull_to_refresh_provider.dart';

class PullToRefresh extends ConsumerWidget {
  const PullToRefresh({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pull to refresh'),
      ),
      body: Consumer(builder: (context, ref, child) {
        final activity = ref.watch(refreshActivityProvider);
        return RefreshIndicator(
          onRefresh: () => ref.refresh(refreshActivityProvider.future),
          child: ListView(
            children: [
              switch (activity) {
                // If some data is available, we display it.
                // Note that data will still be available during a refresh.
                AsyncValue<PullToRefreshModel>(:final valueOrNull?) =>
                  Text(valueOrNull.activity),
                // An error is available, so we render it.
                AsyncValue(:final error?) => Text('Error: $error'),
                // No data/error, so we're in loading state.
                _ => const Center(child: CircularProgressIndicator()),
              },
            ],
          ),
        );
      }),
    );
  }
}
