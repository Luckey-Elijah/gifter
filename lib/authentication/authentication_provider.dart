import 'package:gifter/authentication/authenticated_user.dart';
import 'package:gifter/authentication/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_provider.g.dart';

@riverpod
Stream<AuthenticatedUser?> authentication(Ref ref) {
  final stream = ref.watch(authenticationRepositoryProvider).authenticationStream();
  return stream;
}
