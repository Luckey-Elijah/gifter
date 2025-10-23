// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_controller.dart';

class LoginErrorsMapper extends ClassMapperBase<LoginErrors> {
  LoginErrorsMapper._();

  static LoginErrorsMapper? _instance;
  static LoginErrorsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginErrorsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginErrors';

  static List<String> _$top(LoginErrors v) => v.top;
  static const Field<LoginErrors, List<String>> _f$top = Field(
    'top',
    _$top,
    opt: true,
    def: const [],
  );
  static List<String> _$email(LoginErrors v) => v.email;
  static const Field<LoginErrors, List<String>> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: const [],
  );
  static List<String> _$password(LoginErrors v) => v.password;
  static const Field<LoginErrors, List<String>> _f$password = Field(
    'password',
    _$password,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<LoginErrors> fields = const {
    #top: _f$top,
    #email: _f$email,
    #password: _f$password,
  };

  static LoginErrors _instantiate(DecodingData data) {
    return LoginErrors(
      top: data.dec(_f$top),
      email: data.dec(_f$email),
      password: data.dec(_f$password),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LoginErrors fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginErrors>(map);
  }

  static LoginErrors fromJson(String json) {
    return ensureInitialized().decodeJson<LoginErrors>(json);
  }
}

mixin LoginErrorsMappable {
  String toJson() {
    return LoginErrorsMapper.ensureInitialized().encodeJson<LoginErrors>(
      this as LoginErrors,
    );
  }

  Map<String, dynamic> toMap() {
    return LoginErrorsMapper.ensureInitialized().encodeMap<LoginErrors>(
      this as LoginErrors,
    );
  }

  LoginErrorsCopyWith<LoginErrors, LoginErrors, LoginErrors> get copyWith =>
      _LoginErrorsCopyWithImpl<LoginErrors, LoginErrors>(
        this as LoginErrors,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LoginErrorsMapper.ensureInitialized().stringifyValue(
      this as LoginErrors,
    );
  }

  @override
  bool operator ==(Object other) {
    return LoginErrorsMapper.ensureInitialized().equalsValue(
      this as LoginErrors,
      other,
    );
  }

  @override
  int get hashCode {
    return LoginErrorsMapper.ensureInitialized().hashValue(this as LoginErrors);
  }
}

extension LoginErrorsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginErrors, $Out> {
  LoginErrorsCopyWith<$R, LoginErrors, $Out> get $asLoginErrors =>
      $base.as((v, t, t2) => _LoginErrorsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoginErrorsCopyWith<$R, $In extends LoginErrors, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get top;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get email;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get password;
  $R call({List<String>? top, List<String>? email, List<String>? password});
  LoginErrorsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginErrorsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginErrors, $Out>
    implements LoginErrorsCopyWith<$R, LoginErrors, $Out> {
  _LoginErrorsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginErrors> $mapper =
      LoginErrorsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get top =>
      ListCopyWith(
        $value.top,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(top: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get email =>
      ListCopyWith(
        $value.email,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(email: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get password =>
      ListCopyWith(
        $value.password,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(password: v),
      );
  @override
  $R call({List<String>? top, List<String>? email, List<String>? password}) =>
      $apply(
        FieldCopyWithData({
          if (top != null) #top: top,
          if (email != null) #email: email,
          if (password != null) #password: password,
        }),
      );
  @override
  LoginErrors $make(CopyWithData data) => LoginErrors(
    top: data.get(#top, or: $value.top),
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
  );

  @override
  LoginErrorsCopyWith<$R2, LoginErrors, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LoginErrorsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

