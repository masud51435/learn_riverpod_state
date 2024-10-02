// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_to_refresh_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PullToRefreshModel _$PullToRefreshModelFromJson(Map<String, dynamic> json) {
  return _PullToRefreshModel.fromJson(json);
}

/// @nodoc
mixin _$PullToRefreshModel {
  String get activity => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get participants => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this PullToRefreshModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullToRefreshModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullToRefreshModelCopyWith<PullToRefreshModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullToRefreshModelCopyWith<$Res> {
  factory $PullToRefreshModelCopyWith(
          PullToRefreshModel value, $Res Function(PullToRefreshModel) then) =
      _$PullToRefreshModelCopyWithImpl<$Res, PullToRefreshModel>;
  @useResult
  $Res call({String activity, String type, int participants, double price});
}

/// @nodoc
class _$PullToRefreshModelCopyWithImpl<$Res, $Val extends PullToRefreshModel>
    implements $PullToRefreshModelCopyWith<$Res> {
  _$PullToRefreshModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullToRefreshModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? type = null,
    Object? participants = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PullToRefreshModelImplCopyWith<$Res>
    implements $PullToRefreshModelCopyWith<$Res> {
  factory _$$PullToRefreshModelImplCopyWith(_$PullToRefreshModelImpl value,
          $Res Function(_$PullToRefreshModelImpl) then) =
      __$$PullToRefreshModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String activity, String type, int participants, double price});
}

/// @nodoc
class __$$PullToRefreshModelImplCopyWithImpl<$Res>
    extends _$PullToRefreshModelCopyWithImpl<$Res, _$PullToRefreshModelImpl>
    implements _$$PullToRefreshModelImplCopyWith<$Res> {
  __$$PullToRefreshModelImplCopyWithImpl(_$PullToRefreshModelImpl _value,
      $Res Function(_$PullToRefreshModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PullToRefreshModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? type = null,
    Object? participants = null,
    Object? price = null,
  }) {
    return _then(_$PullToRefreshModelImpl(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PullToRefreshModelImpl implements _PullToRefreshModel {
  _$PullToRefreshModelImpl(
      {required this.activity,
      required this.type,
      required this.participants,
      required this.price});

  factory _$PullToRefreshModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullToRefreshModelImplFromJson(json);

  @override
  final String activity;
  @override
  final String type;
  @override
  final int participants;
  @override
  final double price;

  @override
  String toString() {
    return 'PullToRefreshModel(activity: $activity, type: $type, participants: $participants, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullToRefreshModelImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, activity, type, participants, price);

  /// Create a copy of PullToRefreshModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullToRefreshModelImplCopyWith<_$PullToRefreshModelImpl> get copyWith =>
      __$$PullToRefreshModelImplCopyWithImpl<_$PullToRefreshModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PullToRefreshModelImplToJson(
      this,
    );
  }
}

abstract class _PullToRefreshModel implements PullToRefreshModel {
  factory _PullToRefreshModel(
      {required final String activity,
      required final String type,
      required final int participants,
      required final double price}) = _$PullToRefreshModelImpl;

  factory _PullToRefreshModel.fromJson(Map<String, dynamic> json) =
      _$PullToRefreshModelImpl.fromJson;

  @override
  String get activity;
  @override
  String get type;
  @override
  int get participants;
  @override
  double get price;

  /// Create a copy of PullToRefreshModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullToRefreshModelImplCopyWith<_$PullToRefreshModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
