// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'group_admin_dto.dart';

class GroupAdminDtoMapper extends ClassMapperBase<GroupAdminDto> {
  GroupAdminDtoMapper._();

  static GroupAdminDtoMapper? _instance;
  static GroupAdminDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GroupAdminDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GroupAdminDto';

  @override
  final MappableFields<GroupAdminDto> fields = const {};

  static GroupAdminDto _instantiate(DecodingData data) {
    return GroupAdminDto();
  }

  @override
  final Function instantiate = _instantiate;

  static GroupAdminDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GroupAdminDto>(map);
  }

  static GroupAdminDto fromJson(String json) {
    return ensureInitialized().decodeJson<GroupAdminDto>(json);
  }
}

mixin GroupAdminDtoMappable {
  String toJson() {
    return GroupAdminDtoMapper.ensureInitialized().encodeJson<GroupAdminDto>(
      this as GroupAdminDto,
    );
  }

  Map<String, dynamic> toMap() {
    return GroupAdminDtoMapper.ensureInitialized().encodeMap<GroupAdminDto>(
      this as GroupAdminDto,
    );
  }

  GroupAdminDtoCopyWith<GroupAdminDto, GroupAdminDto, GroupAdminDto>
  get copyWith => _GroupAdminDtoCopyWithImpl<GroupAdminDto, GroupAdminDto>(
    this as GroupAdminDto,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return GroupAdminDtoMapper.ensureInitialized().stringifyValue(
      this as GroupAdminDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return GroupAdminDtoMapper.ensureInitialized().equalsValue(
      this as GroupAdminDto,
      other,
    );
  }

  @override
  int get hashCode {
    return GroupAdminDtoMapper.ensureInitialized().hashValue(
      this as GroupAdminDto,
    );
  }
}

extension GroupAdminDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GroupAdminDto, $Out> {
  GroupAdminDtoCopyWith<$R, GroupAdminDto, $Out> get $asGroupAdminDto =>
      $base.as((v, t, t2) => _GroupAdminDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GroupAdminDtoCopyWith<$R, $In extends GroupAdminDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GroupAdminDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GroupAdminDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GroupAdminDto, $Out>
    implements GroupAdminDtoCopyWith<$R, GroupAdminDto, $Out> {
  _GroupAdminDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GroupAdminDto> $mapper =
      GroupAdminDtoMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  GroupAdminDto $make(CopyWithData data) => GroupAdminDto();

  @override
  GroupAdminDtoCopyWith<$R2, GroupAdminDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GroupAdminDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

