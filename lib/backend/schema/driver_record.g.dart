// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DriverRecord> _$driverRecordSerializer =
    new _$DriverRecordSerializer();

class _$DriverRecordSerializer implements StructuredSerializer<DriverRecord> {
  @override
  final Iterable<Type> types = const [DriverRecord, _$DriverRecord];
  @override
  final String wireName = 'DriverRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DriverRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.joinedDate;
    if (value != null) {
      result
        ..add('joined_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.currentVehicle;
    if (value != null) {
      result
        ..add('current_vehicle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  DriverRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriverRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'joined_date':
          result.joinedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'current_vehicle':
          result.currentVehicle = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$DriverRecord extends DriverRecord {
  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final int? phoneNumber;
  @override
  final DateTime? joinedDate;
  @override
  final DocumentReference<Object?>? currentVehicle;
  @override
  final String? driverLicense;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DriverRecord([void Function(DriverRecordBuilder)? updates]) =>
      (new DriverRecordBuilder()..update(updates))._build();

  _$DriverRecord._(
      {this.uid,
      this.name,
      this.address,
      this.email,
      this.phoneNumber,
      this.joinedDate,
      this.currentVehicle,
      this.driverLicense,
      this.ffRef})
      : super._();

  @override
  DriverRecord rebuild(void Function(DriverRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverRecordBuilder toBuilder() => new DriverRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriverRecord &&
        uid == other.uid &&
        name == other.name &&
        address == other.address &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        joinedDate == other.joinedDate &&
        currentVehicle == other.currentVehicle &&
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
                        $jc(
                            $jc($jc($jc(0, uid.hashCode), name.hashCode),
                                address.hashCode),
                            email.hashCode),
                        phoneNumber.hashCode),
                    joinedDate.hashCode),
                currentVehicle.hashCode),
            driverLicense.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriverRecord')
          ..add('uid', uid)
          ..add('name', name)
          ..add('address', address)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('joinedDate', joinedDate)
          ..add('currentVehicle', currentVehicle)
          ..add('driverLicense', driverLicense)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DriverRecordBuilder
    implements Builder<DriverRecord, DriverRecordBuilder> {
  _$DriverRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _phoneNumber;
  int? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _joinedDate;
  DateTime? get joinedDate => _$this._joinedDate;
  set joinedDate(DateTime? joinedDate) => _$this._joinedDate = joinedDate;

  DocumentReference<Object?>? _currentVehicle;
  DocumentReference<Object?>? get currentVehicle => _$this._currentVehicle;
  set currentVehicle(DocumentReference<Object?>? currentVehicle) =>
      _$this._currentVehicle = currentVehicle;

  String? _driverLicense;
  String? get driverLicense => _$this._driverLicense;
  set driverLicense(String? driverLicense) =>
      _$this._driverLicense = driverLicense;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DriverRecordBuilder() {
    DriverRecord._initializeBuilder(this);
  }

  DriverRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name;
      _address = $v.address;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _joinedDate = $v.joinedDate;
      _currentVehicle = $v.currentVehicle;
      _driverLicense = $v.driverLicense;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriverRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriverRecord;
  }

  @override
  void update(void Function(DriverRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriverRecord build() => _build();

  _$DriverRecord _build() {
    final _$result = _$v ??
        new _$DriverRecord._(
            uid: uid,
            name: name,
            address: address,
            email: email,
            phoneNumber: phoneNumber,
            joinedDate: joinedDate,
            currentVehicle: currentVehicle,
            driverLicense: driverLicense,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
