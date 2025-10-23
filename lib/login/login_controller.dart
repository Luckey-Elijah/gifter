import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:gifter/authentication/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';
part 'login_controller.mapper.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  Future<LoginErrors> build() {
    return Future.value(const LoginErrors.empty());
  }

  Future<void> login({String? email, String? password}) async {
    final repo = ref.read(authenticationRepositoryProvider);
    var value = const LoginErrors.empty();

    if (email == null || email.isEmpty) {
      value = value.copyWith.email.add('Email cannot be empty.');
    }

    if (password == null || password.isEmpty) {
      value = value.copyWith.password.add('Password cannot be empty.');
    }

    if (value != const LoginErrors.empty()) {
      state = AsyncData(value);
      return;
    }

    state = const AsyncLoading();

    if (email != null && password != null) {
      try {
        await repo.login(email: email, password: password);
      } on Exception catch (e, s) {
        state = AsyncData(LoginErrors(top: ['$e', if (kDebugMode) '$s']));
      }
    }
  }
}

@MappableClass()
class LoginErrors with LoginErrorsMappable {
  const LoginErrors({
    this.top = const [],
    this.email = const [],
    this.password = const [],
  });

  const LoginErrors.empty() : top = const [], email = const [], password = const [];

  final List<String> top;
  final List<String> email;
  final List<String> password;
}
