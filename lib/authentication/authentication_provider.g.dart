// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authentication)
const authenticationProvider = AuthenticationProvider._();

final class AuthenticationProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthenticatedUser?>,
          AuthenticatedUser?,
          Stream<AuthenticatedUser?>
        >
    with
        $FutureModifier<AuthenticatedUser?>,
        $StreamProvider<AuthenticatedUser?> {
  const AuthenticationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationHash();

  @$internal
  @override
  $StreamProviderElement<AuthenticatedUser?> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<AuthenticatedUser?> create(Ref ref) {
    return authentication(ref);
  }
}

String _$authenticationHash() => r'61fd0c262708640d2e9f355360d38899c2d7e604';
