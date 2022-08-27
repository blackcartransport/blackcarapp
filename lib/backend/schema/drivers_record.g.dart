// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DriversRecord> _$driversRecordSerializer =
    new _$DriversRecordSerializer();

class _$DriversRecordSerializer implements StructuredSerializer<DriversRecord> {
  @override
  final Iterable<Type> types = const [DriversRecord, _$DriversRecord];
  @override
  final String wireName = 'DriversRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DriversRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.driverId;
    if (value != null) {
      result
        ..add('driver_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverFirstName;
    if (value != null) {
      result
        ..add('driver_first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverLastName;
    if (value != null) {
      result
        ..add('driver_last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverPhotoUrl;
    if (value != null) {
      result
        ..add('driver_photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverCreationDate;
    if (value != null) {
      result
        ..add('driver_creation_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.driverLicense;
    if (value != null) {
      result
        ..add('driver_license')
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
  DriversRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriversRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'driver_id':
          result.driverId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_first_name':
          result.driverFirstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_last_name':
          result.driverLastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_photo_url':
          result.driverPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_creation_date':
          result.driverCreationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'driver_license':
          result.driverLicense = serializers.deserialize(value,
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

class _$DriversRecord extends DriversRecord {
  @override
  final String? driverId;
  @override
  final String? driverFirstName;
  @override
  final String? driverLastName;
  @override
  final String? driverPhotoUrl;
  @override
  final DateTime? driverCreationDate;
  @override
  final String? driverLicense;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DriversRecord([void Function(DriversRecordBuilder)? updates]) =>
      (new DriversRecordBuilder()..update(updates))._build();

  _$DriversRecord._(
      {this.driverId,
      this.driverFirstName,
      this.driverLastName,
      this.driverPhotoUrl,
      this.driverCreationDate,
      this.driverLicense,
      this.ffRef})
      : super._();

  @override
  DriversRecord rebuild(void Function(DriversRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriversRecordBuilder toBuilder() => new DriversRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriversRecord &&
        driverId == other.driverId &&
        driverFirstName == other.driverFirstName &&
        driverLastName == other.driverLastName &&
        driverPhotoUrl == other.driverPhotoUrl &&
        driverCreationDate == other.driverCreationDate &&
        driverLicense == other.driverLicense &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, driverId.hashCode),
                            driverFirstName.hashCode),
                        driverLastName.hashCode),
                    driverPhotoUrl.hashCode),
                driverCreationDate.hashCode),
            driverLicense.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriversRecord')
          ..add('driverId', driverId)
          ..add('driverFirstName', driverFirstName)
          ..add('driverLastName', driverLastName)
          ..add('driverPhotoUrl', driverPhotoUrl)
          ..add('driverCreationDate', driverCreationDate)
          ..add('driverLicense', driverLicense)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DriversRecordBuilder
    implements Builder<DriversRecord, DriversRecordBuilder> {
  _$DriversRecord? _$v;

  String? _driverId;
  String? get driverId => _$this._driverId;
  set driverId(String? driverId) => _$this._driverId = driverId;

  String? _driverFirstName;
  String? get driverFirstName => _$this._driverFirstName;
  set driverFirstName(String? driverFirstName) =>
      _$this._driverFirstName = driverFirstName;

  String? _driverLastName;
  String? get driverLastName => _$this._driverLastName;
  set driverLastName(String? driverLastName) =>
      _$this._driverLastName = driverLastName;

  String? _driverPhotoUrl;
  String? get driverPhotoUrl => _$this._driverPhotoUrl;
  set driverPhotoUrl(String? driverPhotoUrl) =>
      _$this._driverPhotoUrl = driverPhotoUrl;

  DateTime? _driverCreationDate;
  DateTime? get driverCreationDate => _$this._driverCreationDate;
  set driverCreationDate(DateTime? driverCreationDate) =>
      _$this._driverCreationDate = driverCreationDate;

  String? _driverLicense;
  String? get driverLicense => _$this._driverLicense;
  set driverLicense(String? driverLicense) =>
      _$this._driverLicense = driverLicense;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DriversRecordBuilder() {
    DriversRecord._initializeBuilder(this);
  }

  DriversRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _driverId = $v.driverId;
      _driverFirstName = $v.driverFirstName;
      _driverLastName = $v.driverLastName;
      _driverPhotoUrl = $v.driverPhotoUrl;
      _driverCreationDate = $v.driverCreationDate;
      _driverLicense = $v.driverLicense;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriversRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriversRecord;
  }

  @override
  void update(void Function(DriversRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriversRecord build() => _build();

  _$DriversRecord _build() {
    final _$result = _$v ??
        new _$DriversRecord._(
            driverId: driverId,
            driverFirstName: driverFirstName,
            driverLastName: driverLastName,
            driverPhotoUrl: driverPhotoUrl,
            driverCreationDate: driverCreationDate,
            driverLicense: driverLicense,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
