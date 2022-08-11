// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RideRecord> _$rideRecordSerializer = new _$RideRecordSerializer();

class _$RideRecordSerializer implements StructuredSerializer<RideRecord> {
  @override
  final Iterable<Type> types = const [RideRecord, _$RideRecord];
  @override
  final String wireName = 'RideRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RideRecord object,
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
    value = object.dropoff;
    if (value != null) {
      result
        ..add('dropoff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicleId;
    if (value != null) {
      result
        ..add('vehicle_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.driverId;
    if (value != null) {
      result
        ..add('driver_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.pickup;
    if (value != null) {
      result
        ..add('pickup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeRequested;
    if (value != null) {
      result
        ..add('time_requested')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.passengerId;
    if (value != null) {
      result
        ..add('passenger_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.driverRating;
    if (value != null) {
      result
        ..add('driver_rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.paymentId;
    if (value != null) {
      result
        ..add('payment_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalTime;
    if (value != null) {
      result
        ..add('total_time')
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
  RideRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RideRecordBuilder();

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
        case 'dropoff':
          result.dropoff = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicle_id':
          result.vehicleId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'driver_id':
          result.driverId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'pickup':
          result.pickup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_requested':
          result.timeRequested = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'passenger_id':
          result.passengerId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'driver_rating':
          result.driverRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'payment_id':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total_time':
          result.totalTime = serializers.deserialize(value,
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

class _$RideRecord extends RideRecord {
  @override
  final String? uid;
  @override
  final String? dropoff;
  @override
  final DateTime? end;
  @override
  final int? status;
  @override
  final DocumentReference<Object?>? vehicleId;
  @override
  final DocumentReference<Object?>? driverId;
  @override
  final String? pickup;
  @override
  final DateTime? timeRequested;
  @override
  final DocumentReference<Object?>? passengerId;
  @override
  final int? driverRating;
  @override
  final String? paymentId;
  @override
  final String? totalTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RideRecord([void Function(RideRecordBuilder)? updates]) =>
      (new RideRecordBuilder()..update(updates))._build();

  _$RideRecord._(
      {this.uid,
      this.dropoff,
      this.end,
      this.status,
      this.vehicleId,
      this.driverId,
      this.pickup,
      this.timeRequested,
      this.passengerId,
      this.driverRating,
      this.paymentId,
      this.totalTime,
      this.ffRef})
      : super._();

  @override
  RideRecord rebuild(void Function(RideRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RideRecordBuilder toBuilder() => new RideRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RideRecord &&
        uid == other.uid &&
        dropoff == other.dropoff &&
        end == other.end &&
        status == other.status &&
        vehicleId == other.vehicleId &&
        driverId == other.driverId &&
        pickup == other.pickup &&
        timeRequested == other.timeRequested &&
        passengerId == other.passengerId &&
        driverRating == other.driverRating &&
        paymentId == other.paymentId &&
        totalTime == other.totalTime &&
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
                                                $jc($jc(0, uid.hashCode),
                                                    dropoff.hashCode),
                                                end.hashCode),
                                            status.hashCode),
                                        vehicleId.hashCode),
                                    driverId.hashCode),
                                pickup.hashCode),
                            timeRequested.hashCode),
                        passengerId.hashCode),
                    driverRating.hashCode),
                paymentId.hashCode),
            totalTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RideRecord')
          ..add('uid', uid)
          ..add('dropoff', dropoff)
          ..add('end', end)
          ..add('status', status)
          ..add('vehicleId', vehicleId)
          ..add('driverId', driverId)
          ..add('pickup', pickup)
          ..add('timeRequested', timeRequested)
          ..add('passengerId', passengerId)
          ..add('driverRating', driverRating)
          ..add('paymentId', paymentId)
          ..add('totalTime', totalTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RideRecordBuilder implements Builder<RideRecord, RideRecordBuilder> {
  _$RideRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _dropoff;
  String? get dropoff => _$this._dropoff;
  set dropoff(String? dropoff) => _$this._dropoff = dropoff;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  DocumentReference<Object?>? _vehicleId;
  DocumentReference<Object?>? get vehicleId => _$this._vehicleId;
  set vehicleId(DocumentReference<Object?>? vehicleId) =>
      _$this._vehicleId = vehicleId;

  DocumentReference<Object?>? _driverId;
  DocumentReference<Object?>? get driverId => _$this._driverId;
  set driverId(DocumentReference<Object?>? driverId) =>
      _$this._driverId = driverId;

  String? _pickup;
  String? get pickup => _$this._pickup;
  set pickup(String? pickup) => _$this._pickup = pickup;

  DateTime? _timeRequested;
  DateTime? get timeRequested => _$this._timeRequested;
  set timeRequested(DateTime? timeRequested) =>
      _$this._timeRequested = timeRequested;

  DocumentReference<Object?>? _passengerId;
  DocumentReference<Object?>? get passengerId => _$this._passengerId;
  set passengerId(DocumentReference<Object?>? passengerId) =>
      _$this._passengerId = passengerId;

  int? _driverRating;
  int? get driverRating => _$this._driverRating;
  set driverRating(int? driverRating) => _$this._driverRating = driverRating;

  String? _paymentId;
  String? get paymentId => _$this._paymentId;
  set paymentId(String? paymentId) => _$this._paymentId = paymentId;

  String? _totalTime;
  String? get totalTime => _$this._totalTime;
  set totalTime(String? totalTime) => _$this._totalTime = totalTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RideRecordBuilder() {
    RideRecord._initializeBuilder(this);
  }

  RideRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _dropoff = $v.dropoff;
      _end = $v.end;
      _status = $v.status;
      _vehicleId = $v.vehicleId;
      _driverId = $v.driverId;
      _pickup = $v.pickup;
      _timeRequested = $v.timeRequested;
      _passengerId = $v.passengerId;
      _driverRating = $v.driverRating;
      _paymentId = $v.paymentId;
      _totalTime = $v.totalTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RideRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RideRecord;
  }

  @override
  void update(void Function(RideRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RideRecord build() => _build();

  _$RideRecord _build() {
    final _$result = _$v ??
        new _$RideRecord._(
            uid: uid,
            dropoff: dropoff,
            end: end,
            status: status,
            vehicleId: vehicleId,
            driverId: driverId,
            pickup: pickup,
            timeRequested: timeRequested,
            passengerId: passengerId,
            driverRating: driverRating,
            paymentId: paymentId,
            totalTime: totalTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
