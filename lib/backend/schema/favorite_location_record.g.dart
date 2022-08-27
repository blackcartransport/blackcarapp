// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteLocationRecord> _$favoriteLocationRecordSerializer =
    new _$FavoriteLocationRecordSerializer();

class _$FavoriteLocationRecordSerializer
    implements StructuredSerializer<FavoriteLocationRecord> {
  @override
  final Iterable<Type> types = const [
    FavoriteLocationRecord,
    _$FavoriteLocationRecord
  ];
  @override
  final String wireName = 'FavoriteLocationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FavoriteLocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.locationOwner;
    if (value != null) {
      result
        ..add('location_owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.locationName;
    if (value != null) {
      result
        ..add('location_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationAddress;
    if (value != null) {
      result
        ..add('location_address')
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
  FavoriteLocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteLocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location_owner':
          result.locationOwner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'location_name':
          result.locationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location_address':
          result.locationAddress = serializers.deserialize(value,
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

class _$FavoriteLocationRecord extends FavoriteLocationRecord {
  @override
  final DocumentReference<Object?>? locationOwner;
  @override
  final String? locationName;
  @override
  final String? locationAddress;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FavoriteLocationRecord(
          [void Function(FavoriteLocationRecordBuilder)? updates]) =>
      (new FavoriteLocationRecordBuilder()..update(updates))._build();

  _$FavoriteLocationRecord._(
      {this.locationOwner, this.locationName, this.locationAddress, this.ffRef})
      : super._();

  @override
  FavoriteLocationRecord rebuild(
          void Function(FavoriteLocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteLocationRecordBuilder toBuilder() =>
      new FavoriteLocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteLocationRecord &&
        locationOwner == other.locationOwner &&
        locationName == other.locationName &&
        locationAddress == other.locationAddress &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, locationOwner.hashCode), locationName.hashCode),
            locationAddress.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FavoriteLocationRecord')
          ..add('locationOwner', locationOwner)
          ..add('locationName', locationName)
          ..add('locationAddress', locationAddress)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FavoriteLocationRecordBuilder
    implements Builder<FavoriteLocationRecord, FavoriteLocationRecordBuilder> {
  _$FavoriteLocationRecord? _$v;

  DocumentReference<Object?>? _locationOwner;
  DocumentReference<Object?>? get locationOwner => _$this._locationOwner;
  set locationOwner(DocumentReference<Object?>? locationOwner) =>
      _$this._locationOwner = locationOwner;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  String? _locationAddress;
  String? get locationAddress => _$this._locationAddress;
  set locationAddress(String? locationAddress) =>
      _$this._locationAddress = locationAddress;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FavoriteLocationRecordBuilder() {
    FavoriteLocationRecord._initializeBuilder(this);
  }

  FavoriteLocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationOwner = $v.locationOwner;
      _locationName = $v.locationName;
      _locationAddress = $v.locationAddress;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteLocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteLocationRecord;
  }

  @override
  void update(void Function(FavoriteLocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FavoriteLocationRecord build() => _build();

  _$FavoriteLocationRecord _build() {
    final _$result = _$v ??
        new _$FavoriteLocationRecord._(
            locationOwner: locationOwner,
            locationName: locationName,
            locationAddress: locationAddress,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
