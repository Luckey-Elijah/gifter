// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'authenticated_user.dart';

class AuthenticatedUserMapper extends ClassMapperBase<AuthenticatedUser> {
  AuthenticatedUserMapper._();

  static AuthenticatedUserMapper? _instance;
  static AuthenticatedUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthenticatedUserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthenticatedUser';

  static String _$id(AuthenticatedUser v) => v.id;
  static const Field<AuthenticatedUser, String> _f$id = Field('id', _$id);
  static String _$email(AuthenticatedUser v) => v.email;
  static const Field<AuthenticatedUser, String> _f$email = Field(
    'email',
    _$email,
  );
  static String _$name(AuthenticatedUser v) => v.name;
  static const Field<AuthenticatedUser, String> _f$name = Field('name', _$name);
  static String _$avatar(AuthenticatedUser v) => v.avatar;
  static const Field<AuthenticatedUser, String> _f$avatar = Field(
    'avatar',
    _$avatar,
  );
  static bool _$emailVisibility(AuthenticatedUser v) => v.emailVisibility;
  static const Field<AuthenticatedUser, bool> _f$emailVisibility = Field(
    'emailVisibility',
    _$emailVisibility,
  );
  static bool _$verified(AuthenticatedUser v) => v.verified;
  static const Field<AuthenticatedUser, bool> _f$verified = Field(
    'verified',
    _$verified,
  );

  @override
  final MappableFields<AuthenticatedUser> fields = const {
    #id: _f$id,
    #email: _f$email,
    #name: _f$name,
    #avatar: _f$avatar,
    #emailVisibility: _f$emailVisibility,
    #verified: _f$verified,
  };

  static AuthenticatedUser _instantiate(DecodingData data) {
    return AuthenticatedUser(
      id: data.dec(_f$id),
      email: data.dec(_f$email),
      name: data.dec(_f$name),
      avatar: data.dec(_f$avatar),
      emailVisibility: data.dec(_f$emailVisibility),
      verified: data.dec(_f$verified),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AuthenticatedUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthenticatedUser>(map);
  }

  static AuthenticatedUser fromJson(String json) {
    return ensureInitialized().decodeJson<AuthenticatedUser>(json);
  }
}

mixin AuthenticatedUserMappable {
  String toJson() {
    return AuthenticatedUserMapper.ensureInitialized()
        .encodeJson<AuthenticatedUser>(this as AuthenticatedUser);
  }

  Map<String, dynamic> toMap() {
    return AuthenticatedUserMapper.ensureInitialized()
        .encodeMap<AuthenticatedUser>(this as AuthenticatedUser);
  }

  AuthenticatedUserCopyWith<
    AuthenticatedUser,
    AuthenticatedUser,
    AuthenticatedUser
  >
  get copyWith =>
      _AuthenticatedUserCopyWithImpl<AuthenticatedUser, AuthenticatedUser>(
        this as AuthenticatedUser,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AuthenticatedUserMapper.ensureInitialized().stringifyValue(
      this as AuthenticatedUser,
    );
  }

  @override
  bool operator ==(Object other) {
    return AuthenticatedUserMapper.ensureInitialized().equalsValue(
      this as AuthenticatedUser,
      other,
    );
  }

  @override
  int get hashCode {
    return AuthenticatedUserMapper.ensureInitialized().hashValue(
      this as AuthenticatedUser,
    );
  }
}

extension AuthenticatedUserValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthenticatedUser, $Out> {
  AuthenticatedUserCopyWith<$R, AuthenticatedUser, $Out>
  get $asAuthenticatedUser => $base.as(
    (v, t, t2) => _AuthenticatedUserCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AuthenticatedUserCopyWith<
  $R,
  $In extends AuthenticatedUser,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? email,
    String? name,
    String? avatar,
    bool? emailVisibility,
    bool? verified,
  });
  AuthenticatedUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AuthenticatedUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthenticatedUser, $Out>
    implements AuthenticatedUserCopyWith<$R, AuthenticatedUser, $Out> {
  _AuthenticatedUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthenticatedUser> $mapper =
      AuthenticatedUserMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? email,
    String? name,
    String? avatar,
    bool? emailVisibility,
    bool? verified,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (email != null) #email: email,
      if (name != null) #name: name,
      if (avatar != null) #avatar: avatar,
      if (emailVisibility != null) #emailVisibility: emailVisibility,
      if (verified != null) #verified: verified,
    }),
  );
  @override
  AuthenticatedUser $make(CopyWithData data) => AuthenticatedUser(
    id: data.get(#id, or: $value.id),
    email: data.get(#email, or: $value.email),
    name: data.get(#name, or: $value.name),
    avatar: data.get(#avatar, or: $value.avatar),
    emailVisibility: data.get(#emailVisibility, or: $value.emailVisibility),
    verified: data.get(#verified, or: $value.verified),
  );

  @override
  AuthenticatedUserCopyWith<$R2, AuthenticatedUser, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AuthenticatedUserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

