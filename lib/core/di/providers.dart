import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/core/network/dio_config.dart';
import 'package:dio/dio.dart';

final trackerBoxProvider = Provider<Box<Map<String, dynamic>>>(
  (ref) => throw UnimplementedError('Override trackerBoxProvider in main().'),
);

Provider<HiveConfig<T>> hiveConfigProvider<T>(
  ProviderListenable<Box<T>> boxProvider,
) {
  return Provider<HiveConfig<T>>((ref) {
    final box = ref.watch(boxProvider);
    return HiveConfig<T>(box);
  });
}

final dioBaseUrlProvider = Provider<String>(
  (ref) => throw UnimplementedError('Override dioBaseUrlProvider in main().'),
);

final dioConfigProvider = Provider<DioConfig>((ref) {
  final baseUrl = ref.watch(dioBaseUrlProvider);
  return DioConfig(baseUrl: baseUrl);
});

final dioProvider = Provider<Dio>((ref) {
  final config = ref.watch(dioConfigProvider);
  return config.client;
});
