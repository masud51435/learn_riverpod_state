// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemHash() => r'de338864f37a55596e6c4068316259fbd00f2177';

/// See also [item].
@ProviderFor(item)
final itemProvider = AutoDisposeFutureProvider<List<Product>>.internal(
  item,
  name: r'itemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ItemRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$helloHash() => r'0f6b1c361f242c7cc82de477146139360c3464e3';

/// See also [hello].
@ProviderFor(hello)
final helloProvider = AutoDisposeProvider<Object?>.internal(
  hello,
  name: r'helloProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloRef = AutoDisposeProviderRef<Object?>;
String _$counterHash() => r'7feeab269661ab4c70021e32cab98b1f4808425a';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
