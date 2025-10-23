import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:gifter/authentication/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_controller.g.dart';
part 'sign_up_controller.mapper.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  Future<SignUpErrors> build() => Future(SignUpErrors.empty);

  Future<void> signUp({
    required String? email,
    required String? password,
    required String? confirm,
  }) async {
    final repo = ref.read(authenticationRepositoryProvider);
    var value = const SignUpErrors.empty();
    if (email == null || email.isEmpty) {
      value = value.copyWith.email.add('Email cannot be empty.');
    }
    if (password == null || password.isEmpty) {
      value = value.copyWith.password.add('Password cannot be empty.');
    }
    if (confirm == null || confirm.isEmpty) {
      value = value.copyWith.confirm.add('Password confirm cannot be empty.');
    }

    if (password != confirm) {
      value = value.copyWith.confirm.add('Passwords do not match.');
    }

    if (value != const SignUpErrors.empty()) {
      state = AsyncData(value);
      return;
    }

    state = const AsyncLoading();

    if (email != null && password != null && confirm != null) {
      try {
        await repo.signup(
          email: email,
          password: password,
          passwordConfirm: confirm,
        );
        await repo.login(email: email, password: password);
      } on Exception catch (e, s) {
        state = AsyncData(
          SignUpErrors(
            top: ['$e', if (kDebugMode) '$s'],
          ),
        );
      }
    }
  }
}

@MappableClass()
class SignUpErrors with SignUpErrorsMappable {
  SignUpErrors({
    this.top = const [],
    this.email = const [],
    this.password = const [],
    this.confirm = const [],
  });

  const SignUpErrors.empty() : top = const [], email = const [], password = const [], confirm = const [];

  final List<String> top;
  final List<String> email;
  final List<String> password;
  final List<String> confirm;
}
