// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracker_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trackerRepositoryHash() => r'c2a6620b973f8999d49449e59c45bcd1c87c5690';

/// See also [trackerRepository].
@ProviderFor(trackerRepository)
final trackerRepositoryProvider =
    AutoDisposeProvider<TrackerRepository>.internal(
  trackerRepository,
  name: r'trackerRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$trackerRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TrackerRepositoryRef = AutoDisposeProviderRef<TrackerRepository>;
String _$trackerControllerHash() => r'95b159e994dedf6a5b87c96518611a56c2e2c78b';

/// See also [TrackerController].
@ProviderFor(TrackerController)
final trackerControllerProvider =
    AutoDisposeAsyncNotifierProvider<TrackerController, TrackerState>.internal(
  TrackerController.new,
  name: r'trackerControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$trackerControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TrackerController = AutoDisposeAsyncNotifier<TrackerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
