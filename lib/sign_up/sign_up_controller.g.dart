// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpController)
const signUpControllerProvider = SignUpControllerProvider._();

final class SignUpControllerProvider
    extends $AsyncNotifierProvider<SignUpController, SignUpErrors> {
  const SignUpControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpControllerHash();

  @$internal
  @override
  SignUpController create() => SignUpController();
}

String _$signUpControllerHash() => r'2f8957c3017a60341e342fd21d9a6ae004bc814b';

abstract class _$SignUpController extends $AsyncNotifier<SignUpErrors> {
  FutureOr<SignUpErrors> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<SignUpErrors>, SignUpErrors>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SignUpErrors>, SignUpErrors>,
              AsyncValue<SignUpErrors>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
