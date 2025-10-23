// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pocketbase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pocketbase)
const pocketbaseProvider = PocketbaseProvider._();

final class PocketbaseProvider
    extends $FunctionalProvider<PocketBase, PocketBase, PocketBase>
    with $Provider<PocketBase> {
  const PocketbaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pocketbaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pocketbaseHash();

  @$internal
  @override
  $ProviderElement<PocketBase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PocketBase create(Ref ref) {
    return pocketbase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PocketBase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PocketBase>(value),
    );
  }
}

String _$pocketbaseHash() => r'6758690455476adda38f64c2430fa06d014af7a6';
