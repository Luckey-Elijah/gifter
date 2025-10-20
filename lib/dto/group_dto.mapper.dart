// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'group_dto.dart';

class GroupDtoMapper extends ClassMapperBase<GroupDto> {
  GroupDtoMapper._();

  static GroupDtoMapper? _instance;
  static GroupDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GroupDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GroupDto';

  @override
  final MappableFields<GroupDto> fields = const {};

  static GroupDto _instantiate(DecodingData data) {
    return GroupDto();
  }

  @override
  final Function instantiate = _instantiate;

  static GroupDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GroupDto>(map);
  }

  static GroupDto fromJson(String json) {
    return ensureInitialized().decodeJson<GroupDto>(json);
  }
}

mixin GroupDtoMappable {
  String toJson() {
    return GroupDtoMapper.ensureInitialized().encodeJson<GroupDto>(
      this as GroupDto,
    );
  }

  Map<String, dynamic> toMap() {
    return GroupDtoMapper.ensureInitialized().encodeMap<GroupDto>(
      this as GroupDto,
    );
  }

  GroupDtoCopyWith<GroupDto, GroupDto, GroupDto> get copyWith =>
      _GroupDtoCopyWithImpl<GroupDto, GroupDto>(
        this as GroupDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GroupDtoMapper.ensureInitialized().stringifyValue(this as GroupDto);
  }

  @override
  bool operator ==(Object other) {
    return GroupDtoMapper.ensureInitialized().equalsValue(
      this as GroupDto,
      other,
    );
  }

  @override
  int get hashCode {
    return GroupDtoMapper.ensureInitialized().hashValue(this as GroupDto);
  }
}

extension GroupDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, GroupDto, $Out> {
  GroupDtoCopyWith<$R, GroupDto, $Out> get $asGroupDto =>
      $base.as((v, t, t2) => _GroupDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GroupDtoCopyWith<$R, $In extends GroupDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GroupDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GroupDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GroupDto, $Out>
    implements GroupDtoCopyWith<$R, GroupDto, $Out> {
  _GroupDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GroupDto> $mapper =
      GroupDtoMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  GroupDto $make(CopyWithData data) => GroupDto();

  @override
  GroupDtoCopyWith<$R2, GroupDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GroupDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

