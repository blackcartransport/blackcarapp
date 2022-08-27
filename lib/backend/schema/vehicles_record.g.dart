// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehiclesRecord> _$vehiclesRecordSerializer =
    new _$VehiclesRecordSerializer();

class _$VehiclesRecordSerializer
    implements StructuredSerializer<VehiclesRecord> {
  @override
  final Iterable<Type> types = const [VehiclesRecord, _$VehiclesRecord];
  @override
  final String wireName = 'VehiclesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VehiclesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.vehicleMake;
    if (value != null) {
      result
        ..add('vehicle_make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleModel;
    if (value != null) {
      result
        ..add('vehicle_model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleLicensePlate;
    if (value != null) {
      result
        ..add('vehicle_license_plate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleType;
    if (value != null) {
      result
        ..add('vehicle_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleBaseRate;
    if (value != null) {
      result
        ..add('vehicle_base_rate')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicleId;
    if (value != null) {
      result
        ..add('vehicle_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VehiclesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehiclesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vehicle_make':
          result.vehicleMake = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_model':
          result.vehicleModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_license_plate':
          result.vehicleLicensePlate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_type':
          result.vehicleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_base_rate':
          result.vehicleBaseRate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicle_id':
          result.vehicleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VehiclesRecord extends VehiclesRecord {
  @override
  final String? vehicleMake;
  @override
  final String? vehicleModel;
  @override
  final String? vehicleLicensePlate;
  @override
  final String? vehicleType;
  @override
  final int? vehicleBaseRate;
  @override
  final String? vehicleId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VehiclesRecord([void Function(VehiclesRecordBuilder)? updates]) =>
      (new VehiclesRecordBuilder()..update(updates))._build();

  _$VehiclesRecord._(
      {this.vehicleMake,
      this.vehicleModel,
      this.vehicleLicensePlate,
      this.vehicleType,
      this.vehicleBaseRate,
      this.vehicleId,
      this.ffRef})
      : super._();

  @override
  VehiclesRecord rebuild(void Function(VehiclesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehiclesRecordBuilder toBuilder() =>
      new VehiclesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehiclesRecord &&
        vehicleMake == other.vehicleMake &&
        vehicleModel == other.vehicleModel &&
        vehicleLicensePlate == other.vehicleLicensePlate &&
        vehicleType == other.vehicleType &&
        vehicleBaseRate == other.vehicleBaseRate &&
        vehicleId == other.vehicleId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, vehicleMake.hashCode),
                            vehicleModel.hashCode),
                        vehicleLicensePlate.hashCode),
                    vehicleType.hashCode),
                vehicleBaseRate.hashCode),
            vehicleId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VehiclesRecord')
          ..add('vehicleMake', vehicleMake)
          ..add('vehicleModel', vehicleModel)
          ..add('vehicleLicensePlate', vehicleLicensePlate)
          ..add('vehicleType', vehicleType)
          ..add('vehicleBaseRate', vehicleBaseRate)
          ..add('vehicleId', vehicleId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VehiclesRecordBuilder
    implements Builder<VehiclesRecord, VehiclesRecordBuilder> {
  _$VehiclesRecord? _$v;

  String? _vehicleMake;
  String? get vehicleMake => _$this._vehicleMake;
  set vehicleMake(String? vehicleMake) => _$this._vehicleMake = vehicleMake;

  String? _vehicleModel;
  String? get vehicleModel => _$this._vehicleModel;
  set vehicleModel(String? vehicleModel) => _$this._vehicleModel = vehicleModel;

  String? _vehicleLicensePlate;
  String? get vehicleLicensePlate => _$this._vehicleLicensePlate;
  set vehicleLicensePlate(String? vehicleLicensePlate) =>
      _$this._vehicleLicensePlate = vehicleLicensePlate;

  String? _vehicleType;
  String? get vehicleType => _$this._vehicleType;
  set vehicleType(String? vehicleType) => _$this._vehicleType = vehicleType;

  int? _vehicleBaseRate;
  int? get vehicleBaseRate => _$this._vehicleBaseRate;
  set vehicleBaseRate(int? vehicleBaseRate) =>
      _$this._vehicleBaseRate = vehicleBaseRate;

  String? _vehicleId;
  String? get vehicleId => _$this._vehicleId;
  set vehicleId(String? vehicleId) => _$this._vehicleId = vehicleId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VehiclesRecordBuilder() {
    VehiclesRecord._initializeBuilder(this);
  }

  VehiclesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vehicleMake = $v.vehicleMake;
      _vehicleModel = $v.vehicleModel;
      _vehicleLicensePlate = $v.vehicleLicensePlate;
      _vehicleType = $v.vehicleType;
      _vehicleBaseRate = $v.vehicleBaseRate;
      _vehicleId = $v.vehicleId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VehiclesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehiclesRecord;
  }

  @override
  void update(void Function(VehiclesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VehiclesRecord build() => _build();

  _$VehiclesRecord _build() {
    final _$result = _$v ??
        new _$VehiclesRecord._(
            vehicleMake: vehicleMake,
            vehicleModel: vehicleModel,
            vehicleLicensePlate: vehicleLicensePlate,
            vehicleType: vehicleType,
            vehicleBaseRate: vehicleBaseRate,
            vehicleId: vehicleId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
