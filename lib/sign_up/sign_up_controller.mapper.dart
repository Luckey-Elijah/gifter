// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sign_up_controller.dart';

class SignUpErrorsMapper extends ClassMapperBase<SignUpErrors> {
  SignUpErrorsMapper._();

  static SignUpErrorsMapper? _instance;
  static SignUpErrorsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignUpErrorsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SignUpErrors';

  static List<String> _$top(SignUpErrors v) => v.top;
  static const Field<SignUpErrors, List<String>> _f$top = Field(
    'top',
    _$top,
    opt: true,
    def: const [],
  );
  static List<String> _$email(SignUpErrors v) => v.email;
  static const Field<SignUpErrors, List<String>> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: const [],
  );
  static List<String> _$password(SignUpErrors v) => v.password;
  static const Field<SignUpErrors, List<String>> _f$password = Field(
    'password',
    _$password,
    opt: true,
    def: const [],
  );
  static List<String> _$confirm(SignUpErrors v) => v.confirm;
  static const Field<SignUpErrors, List<String>> _f$confirm = Field(
    'confirm',
    _$confirm,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<SignUpErrors> fields = const {
    #top: _f$top,
    #email: _f$email,
    #password: _f$password,
    #confirm: _f$confirm,
  };

  static SignUpErrors _instantiate(DecodingData data) {
    return SignUpErrors(
      top: data.dec(_f$top),
      email: data.dec(_f$email),
      password: data.dec(_f$password),
      confirm: data.dec(_f$confirm),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SignUpErrors fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignUpErrors>(map);
  }

  static SignUpErrors fromJson(String json) {
    return ensureInitialized().decodeJson<SignUpErrors>(json);
  }
}

mixin SignUpErrorsMappable {
  String toJson() {
    return SignUpErrorsMapper.ensureInitialized().encodeJson<SignUpErrors>(
      this as SignUpErrors,
    );
  }

  Map<String, dynamic> toMap() {
    return SignUpErrorsMapper.ensureInitialized().encodeMap<SignUpErrors>(
      this as SignUpErrors,
    );
  }

  SignUpErrorsCopyWith<SignUpErrors, SignUpErrors, SignUpErrors> get copyWith =>
      _SignUpErrorsCopyWithImpl<SignUpErrors, SignUpErrors>(
        this as SignUpErrors,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SignUpErrorsMapper.ensureInitialized().stringifyValue(
      this as SignUpErrors,
    );
  }

  @override
  bool operator ==(Object other) {
    return SignUpErrorsMapper.ensureInitialized().equalsValue(
      this as SignUpErrors,
      other,
    );
  }

  @override
  int get hashCode {
    return SignUpErrorsMapper.ensureInitialized().hashValue(
      this as SignUpErrors,
    );
  }
}

extension SignUpErrorsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SignUpErrors, $Out> {
  SignUpErrorsCopyWith<$R, SignUpErrors, $Out> get $asSignUpErrors =>
      $base.as((v, t, t2) => _SignUpErrorsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SignUpErrorsCopyWith<$R, $In extends SignUpErrors, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get top;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get email;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get password;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get confirm;
  $R call({
    List<String>? top,
    List<String>? email,
    List<String>? password,
    List<String>? confirm,
  });
  SignUpErrorsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SignUpErrorsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignUpErrors, $Out>
    implements SignUpErrorsCopyWith<$R, SignUpErrors, $Out> {
  _SignUpErrorsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignUpErrors> $mapper =
      SignUpErrorsMapper.ensureInitialized();
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
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get confirm =>
      ListCopyWith(
        $value.confirm,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(confirm: v),
      );
  @override
  $R call({
    List<String>? top,
    List<String>? email,
    List<String>? password,
    List<String>? confirm,
  }) => $apply(
    FieldCopyWithData({
      if (top != null) #top: top,
      if (email != null) #email: email,
      if (password != null) #password: password,
      if (confirm != null) #confirm: confirm,
    }),
  );
  @override
  SignUpErrors $make(CopyWithData data) => SignUpErrors(
    top: data.get(#top, or: $value.top),
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
    confirm: data.get(#confirm, or: $value.confirm),
  );

  @override
  SignUpErrorsCopyWith<$R2, SignUpErrors, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SignUpErrorsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

