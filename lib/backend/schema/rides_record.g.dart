// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rides_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RidesRecord> _$ridesRecordSerializer = new _$RidesRecordSerializer();

class _$RidesRecordSerializer implements StructuredSerializer<RidesRecord> {
  @override
  final Iterable<Type> types = const [RidesRecord, _$RidesRecord];
  @override
  final String wireName = 'RidesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RidesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rideId;
    if (value != null) {
      result
        ..add('ride_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverId;
    if (value != null) {
      result
        ..add('driver_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.passengerId;
    if (value != null) {
      result
        ..add('passenger_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.vehicleId;
    if (value != null) {
      result
        ..add('vehicle_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ridePickupLocation;
    if (value != null) {
      result
        ..add('ride_pickup_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ridePickupDay;
    if (value != null) {
      result
        ..add('ride_pickup_day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ridePickupTime;
    if (value != null) {
      result
        ..add('ride_pickup_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rideDropoffLocation;
    if (value != null) {
      result
        ..add('ride_dropoff_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.rideDropoffDay;
    if (value != null) {
      result
        ..add('ride_dropoff_day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rideDropoffTime;
    if (value != null) {
      result
        ..add('ride_dropoff_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.passengerRating;
    if (value != null) {
      result
        ..add('passenger_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.rideTimeRequested;
    if (value != null) {
      result
        ..add('ride_time_requested')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rideSpecialRequest;
    if (value != null) {
      result
        ..add('ride_special_request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ridePickupAddress;
    if (value != null) {
      result
        ..add('ride_pickup_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideDropoffAddress;
    if (value != null) {
      result
        ..add('ride_dropoff_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverLocation;
    if (value != null) {
      result
        ..add('driver_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.passengerLocation;
    if (value != null) {
      result
        ..add('passenger_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.rideType;
    if (value != null) {
      result
        ..add('ride_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideExtraStops;
    if (value != null) {
      result
        ..add('ride_extra_stops')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.totalRide;
    if (value != null) {
      result
        ..add('total_ride')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  RidesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RidesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ride_id':
          result.rideId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_id':
          result.driverId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'passenger_id':
          result.passengerId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'vehicle_id':
          result.vehicleId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ride_pickup_location':
          result.ridePickupLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'ride_pickup_day':
          result.ridePickupDay = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ride_pickup_time':
          result.ridePickupTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ride_dropoff_location':
          result.rideDropoffLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'ride_dropoff_day':
          result.rideDropoffDay = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ride_dropoff_time':
          result.rideDropoffTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'passenger_rating':
          result.passengerRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ride_time_requested':
          result.rideTimeRequested = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ride_special_request':
          result.rideSpecialRequest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_pickup_address':
          result.ridePickupAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_dropoff_address':
          result.rideDropoffAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_location':
          result.driverLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'passenger_location':
          result.passengerLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'ride_type':
          result.rideType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_extra_stops':
          result.rideExtraStops.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'total_ride':
          result.totalRide = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$RidesRecord extends RidesRecord {
  @override
  final String? rideId;
  @override
  final DocumentReference<Object?>? driverId;
  @override
  final DocumentReference<Object?>? passengerId;
  @override
  final DocumentReference<Object?>? vehicleId;
  @override
  final LatLng? ridePickupLocation;
  @override
  final DateTime? ridePickupDay;
  @override
  final DateTime? ridePickupTime;
  @override
  final LatLng? rideDropoffLocation;
  @override
  final DateTime? rideDropoffDay;
  @override
  final DateTime? rideDropoffTime;
  @override
  final double? passengerRating;
  @override
  final DateTime? rideTimeRequested;
  @override
  final String? rideSpecialRequest;
  @override
  final String? ridePickupAddress;
  @override
  final String? rideDropoffAddress;
  @override
  final LatLng? driverLocation;
  @override
  final LatLng? passengerLocation;
  @override
  final String? rideType;
  @override
  final BuiltList<String>? rideExtraStops;
  @override
  final double? totalRide;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RidesRecord([void Function(RidesRecordBuilder)? updates]) =>
      (new RidesRecordBuilder()..update(updates))._build();

  _$RidesRecord._(
      {this.rideId,
      this.driverId,
      this.passengerId,
      this.vehicleId,
      this.ridePickupLocation,
      this.ridePickupDay,
      this.ridePickupTime,
      this.rideDropoffLocation,
      this.rideDropoffDay,
      this.rideDropoffTime,
      this.passengerRating,
      this.rideTimeRequested,
      this.rideSpecialRequest,
      this.ridePickupAddress,
      this.rideDropoffAddress,
      this.driverLocation,
      this.passengerLocation,
      this.rideType,
      this.rideExtraStops,
      this.totalRide,
      this.ffRef})
      : super._();

  @override
  RidesRecord rebuild(void Function(RidesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RidesRecordBuilder toBuilder() => new RidesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RidesRecord &&
        rideId == other.rideId &&
        driverId == other.driverId &&
        passengerId == other.passengerId &&
        vehicleId == other.vehicleId &&
        ridePickupLocation == other.ridePickupLocation &&
        ridePickupDay == other.ridePickupDay &&
        ridePickupTime == other.ridePickupTime &&
        rideDropoffLocation == other.rideDropoffLocation &&
        rideDropoffDay == other.rideDropoffDay &&
        rideDropoffTime == other.rideDropoffTime &&
        passengerRating == other.passengerRating &&
        rideTimeRequested == other.rideTimeRequested &&
        rideSpecialRequest == other.rideSpecialRequest &&
        ridePickupAddress == other.ridePickupAddress &&
        rideDropoffAddress == other.rideDropoffAddress &&
        driverLocation == other.driverLocation &&
        passengerLocation == other.passengerLocation &&
        rideType == other.rideType &&
        rideExtraStops == other.rideExtraStops &&
        totalRide == other.totalRide &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, rideId.hashCode), driverId.hashCode),
                                                                                passengerId.hashCode),
                                                                            vehicleId.hashCode),
                                                                        ridePickupLocation.hashCode),
                                                                    ridePickupDay.hashCode),
                                                                ridePickupTime.hashCode),
                                                            rideDropoffLocation.hashCode),
                                                        rideDropoffDay.hashCode),
                                                    rideDropoffTime.hashCode),
                                                passengerRating.hashCode),
                                            rideTimeRequested.hashCode),
                                        rideSpecialRequest.hashCode),
                                    ridePickupAddress.hashCode),
                                rideDropoffAddress.hashCode),
                            driverLocation.hashCode),
                        passengerLocation.hashCode),
                    rideType.hashCode),
                rideExtraStops.hashCode),
            totalRide.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RidesRecord')
          ..add('rideId', rideId)
          ..add('driverId', driverId)
          ..add('passengerId', passengerId)
          ..add('vehicleId', vehicleId)
          ..add('ridePickupLocation', ridePickupLocation)
          ..add('ridePickupDay', ridePickupDay)
          ..add('ridePickupTime', ridePickupTime)
          ..add('rideDropoffLocation', rideDropoffLocation)
          ..add('rideDropoffDay', rideDropoffDay)
          ..add('rideDropoffTime', rideDropoffTime)
          ..add('passengerRating', passengerRating)
          ..add('rideTimeRequested', rideTimeRequested)
          ..add('rideSpecialRequest', rideSpecialRequest)
          ..add('ridePickupAddress', ridePickupAddress)
          ..add('rideDropoffAddress', rideDropoffAddress)
          ..add('driverLocation', driverLocation)
          ..add('passengerLocation', passengerLocation)
          ..add('rideType', rideType)
          ..add('rideExtraStops', rideExtraStops)
          ..add('totalRide', totalRide)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RidesRecordBuilder implements Builder<RidesRecord, RidesRecordBuilder> {
  _$RidesRecord? _$v;

  String? _rideId;
  String? get rideId => _$this._rideId;
  set rideId(String? rideId) => _$this._rideId = rideId;

  DocumentReference<Object?>? _driverId;
  DocumentReference<Object?>? get driverId => _$this._driverId;
  set driverId(DocumentReference<Object?>? driverId) =>
      _$this._driverId = driverId;

  DocumentReference<Object?>? _passengerId;
  DocumentReference<Object?>? get passengerId => _$this._passengerId;
  set passengerId(DocumentReference<Object?>? passengerId) =>
      _$this._passengerId = passengerId;

  DocumentReference<Object?>? _vehicleId;
  DocumentReference<Object?>? get vehicleId => _$this._vehicleId;
  set vehicleId(DocumentReference<Object?>? vehicleId) =>
      _$this._vehicleId = vehicleId;

  LatLng? _ridePickupLocation;
  LatLng? get ridePickupLocation => _$this._ridePickupLocation;
  set ridePickupLocation(LatLng? ridePickupLocation) =>
      _$this._ridePickupLocation = ridePickupLocation;

  DateTime? _ridePickupDay;
  DateTime? get ridePickupDay => _$this._ridePickupDay;
  set ridePickupDay(DateTime? ridePickupDay) =>
      _$this._ridePickupDay = ridePickupDay;

  DateTime? _ridePickupTime;
  DateTime? get ridePickupTime => _$this._ridePickupTime;
  set ridePickupTime(DateTime? ridePickupTime) =>
      _$this._ridePickupTime = ridePickupTime;

  LatLng? _rideDropoffLocation;
  LatLng? get rideDropoffLocation => _$this._rideDropoffLocation;
  set rideDropoffLocation(LatLng? rideDropoffLocation) =>
      _$this._rideDropoffLocation = rideDropoffLocation;

  DateTime? _rideDropoffDay;
  DateTime? get rideDropoffDay => _$this._rideDropoffDay;
  set rideDropoffDay(DateTime? rideDropoffDay) =>
      _$this._rideDropoffDay = rideDropoffDay;

  DateTime? _rideDropoffTime;
  DateTime? get rideDropoffTime => _$this._rideDropoffTime;
  set rideDropoffTime(DateTime? rideDropoffTime) =>
      _$this._rideDropoffTime = rideDropoffTime;

  double? _passengerRating;
  double? get passengerRating => _$this._passengerRating;
  set passengerRating(double? passengerRating) =>
      _$this._passengerRating = passengerRating;

  DateTime? _rideTimeRequested;
  DateTime? get rideTimeRequested => _$this._rideTimeRequested;
  set rideTimeRequested(DateTime? rideTimeRequested) =>
      _$this._rideTimeRequested = rideTimeRequested;

  String? _rideSpecialRequest;
  String? get rideSpecialRequest => _$this._rideSpecialRequest;
  set rideSpecialRequest(String? rideSpecialRequest) =>
      _$this._rideSpecialRequest = rideSpecialRequest;

  String? _ridePickupAddress;
  String? get ridePickupAddress => _$this._ridePickupAddress;
  set ridePickupAddress(String? ridePickupAddress) =>
      _$this._ridePickupAddress = ridePickupAddress;

  String? _rideDropoffAddress;
  String? get rideDropoffAddress => _$this._rideDropoffAddress;
  set rideDropoffAddress(String? rideDropoffAddress) =>
      _$this._rideDropoffAddress = rideDropoffAddress;

  LatLng? _driverLocation;
  LatLng? get driverLocation => _$this._driverLocation;
  set driverLocation(LatLng? driverLocation) =>
      _$this._driverLocation = driverLocation;

  LatLng? _passengerLocation;
  LatLng? get passengerLocation => _$this._passengerLocation;
  set passengerLocation(LatLng? passengerLocation) =>
      _$this._passengerLocation = passengerLocation;

  String? _rideType;
  String? get rideType => _$this._rideType;
  set rideType(String? rideType) => _$this._rideType = rideType;

  ListBuilder<String>? _rideExtraStops;
  ListBuilder<String> get rideExtraStops =>
      _$this._rideExtraStops ??= new ListBuilder<String>();
  set rideExtraStops(ListBuilder<String>? rideExtraStops) =>
      _$this._rideExtraStops = rideExtraStops;

  double? _totalRide;
  double? get totalRide => _$this._totalRide;
  set totalRide(double? totalRide) => _$this._totalRide = totalRide;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RidesRecordBuilder() {
    RidesRecord._initializeBuilder(this);
  }

  RidesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rideId = $v.rideId;
      _driverId = $v.driverId;
      _passengerId = $v.passengerId;
      _vehicleId = $v.vehicleId;
      _ridePickupLocation = $v.ridePickupLocation;
      _ridePickupDay = $v.ridePickupDay;
      _ridePickupTime = $v.ridePickupTime;
      _rideDropoffLocation = $v.rideDropoffLocation;
      _rideDropoffDay = $v.rideDropoffDay;
      _rideDropoffTime = $v.rideDropoffTime;
      _passengerRating = $v.passengerRating;
      _rideTimeRequested = $v.rideTimeRequested;
      _rideSpecialRequest = $v.rideSpecialRequest;
      _ridePickupAddress = $v.ridePickupAddress;
      _rideDropoffAddress = $v.rideDropoffAddress;
      _driverLocation = $v.driverLocation;
      _passengerLocation = $v.passengerLocation;
      _rideType = $v.rideType;
      _rideExtraStops = $v.rideExtraStops?.toBuilder();
      _totalRide = $v.totalRide;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RidesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RidesRecord;
  }

  @override
  void update(void Function(RidesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RidesRecord build() => _build();

  _$RidesRecord _build() {
    _$RidesRecord _$result;
    try {
      _$result = _$v ??
          new _$RidesRecord._(
              rideId: rideId,
              driverId: driverId,
              passengerId: passengerId,
              vehicleId: vehicleId,
              ridePickupLocation: ridePickupLocation,
              ridePickupDay: ridePickupDay,
              ridePickupTime: ridePickupTime,
              rideDropoffLocation: rideDropoffLocation,
              rideDropoffDay: rideDropoffDay,
              rideDropoffTime: rideDropoffTime,
              passengerRating: passengerRating,
              rideTimeRequested: rideTimeRequested,
              rideSpecialRequest: rideSpecialRequest,
              ridePickupAddress: ridePickupAddress,
              rideDropoffAddress: rideDropoffAddress,
              driverLocation: driverLocation,
              passengerLocation: passengerLocation,
              rideType: rideType,
              rideExtraStops: _rideExtraStops?.build(),
              totalRide: totalRide,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rideExtraStops';
        _rideExtraStops?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RidesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
