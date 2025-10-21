import 'package:dart_mappable/dart_mappable.dart';

part 'authenticated_user.mapper.dart';

@MappableClass()
class AuthenticatedUser with AuthenticatedUserMappable {
  AuthenticatedUser({
    required this.id,
    required this.email,
    required this.name,
    required this.avatar,
    required this.emailVisibility,
    required this.verified,
  });

  final String id;
  final String email;
  final String name;
  final String avatar;
  final bool emailVisibility;
  final bool verified;
}
