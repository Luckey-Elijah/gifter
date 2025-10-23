import 'package:gifter/authentication/authenticated_user.dart';
import 'package:gifter/pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(Ref ref) {
  return AuthenticationRepository(pocketBase: ref.watch(pocketbaseProvider));
}

class AuthenticationRepository {
  AuthenticationRepository({required PocketBase pocketBase}) : _pocketBase = pocketBase;

  final PocketBase _pocketBase;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    await _pocketBase.collection('users').authWithPassword(email, password);
  }

  Future<void> signup({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    final body = <String, dynamic>{
      'email': email,
      'password': password,
      'passwordConfirm': passwordConfirm,
    };
    await _pocketBase.collection('users').create(body: body);
  }

  bool authenticated() {
    return _pocketBase.authStore.isValid;
  }

  Stream<AuthenticatedUser?> authenticationStream() {
    final stream = _pocketBase.authStore.onChange;
    return stream.map((event) {
      final record = event.record;
      if (record != null) {
        return AuthenticatedUserMapper.fromMap(record.data);
      }
      return null;
    });
  }

  void logout() {
    _pocketBase.authStore.clear();
  }
}
