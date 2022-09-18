// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_locations_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyLocationsStruct> _$myLocationsStructSerializer =
    new _$MyLocationsStructSerializer();

class _$MyLocationsStructSerializer
    implements StructuredSerializer<MyLocationsStruct> {
  @override
  final Iterable<Type> types = const [MyLocationsStruct, _$MyLocationsStruct];
  @override
  final String wireName = 'MyLocationsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyLocationsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.locationCode;
    if (value != null) {
      result
        ..add('locationCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.locationName;
    if (value != null) {
      result
        ..add('locationName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MyLocationsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyLocationsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'locationCode':
          result.locationCode = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'locationName':
          result.locationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$MyLocationsStruct extends MyLocationsStruct {
  @override
  final LatLng? locationCode;
  @override
  final String? locationName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MyLocationsStruct(
          [void Function(MyLocationsStructBuilder)? updates]) =>
      (new MyLocationsStructBuilder()..update(updates))._build();

  _$MyLocationsStruct._(
      {this.locationCode, this.locationName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MyLocationsStruct', 'firestoreUtilData');
  }

  @override
  MyLocationsStruct rebuild(void Function(MyLocationsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyLocationsStructBuilder toBuilder() =>
      new MyLocationsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyLocationsStruct &&
        locationCode == other.locationCode &&
        locationName == other.locationName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, locationCode.hashCode), locationName.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyLocationsStruct')
          ..add('locationCode', locationCode)
          ..add('locationName', locationName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MyLocationsStructBuilder
    implements Builder<MyLocationsStruct, MyLocationsStructBuilder> {
  _$MyLocationsStruct? _$v;

  LatLng? _locationCode;
  LatLng? get locationCode => _$this._locationCode;
  set locationCode(LatLng? locationCode) => _$this._locationCode = locationCode;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MyLocationsStructBuilder() {
    MyLocationsStruct._initializeBuilder(this);
  }

  MyLocationsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationCode = $v.locationCode;
      _locationName = $v.locationName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyLocationsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyLocationsStruct;
  }

  @override
  void update(void Function(MyLocationsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyLocationsStruct build() => _build();

  _$MyLocationsStruct _build() {
    final _$result = _$v ??
        new _$MyLocationsStruct._(
            locationCode: locationCode,
            locationName: locationName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MyLocationsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
