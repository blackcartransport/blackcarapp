import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ride_record.g.dart';

abstract class RideRecord implements Built<RideRecord, RideRecordBuilder> {
  static Serializer<RideRecord> get serializer => _$rideRecordSerializer;

  String? get uid;

  String? get dropoff;

  DateTime? get end;

  int? get status;

  @BuiltValueField(wireName: 'vehicle_id')
  DocumentReference? get vehicleId;

  @BuiltValueField(wireName: 'driver_id')
  DocumentReference? get driverId;

  String? get pickup;

  @BuiltValueField(wireName: 'time_requested')
  DateTime? get timeRequested;

  @BuiltValueField(wireName: 'passenger_id')
  DocumentReference? get passengerId;

  @BuiltValueField(wireName: 'driver_rating')
  int? get driverRating;

  @BuiltValueField(wireName: 'payment_id')
  String? get paymentId;

  @BuiltValueField(wireName: 'total_time')
  String? get totalTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RideRecordBuilder builder) => builder
    ..uid = ''
    ..dropoff = ''
    ..status = 0
    ..pickup = ''
    ..driverRating = 0
    ..paymentId = ''
    ..totalTime = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ride');

  static Stream<RideRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RideRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RideRecord._();
  factory RideRecord([void Function(RideRecordBuilder) updates]) = _$RideRecord;

  static RideRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRideRecordData({
  String? uid,
  String? dropoff,
  DateTime? end,
  int? status,
  DocumentReference? vehicleId,
  DocumentReference? driverId,
  String? pickup,
  DateTime? timeRequested,
  DocumentReference? passengerId,
  int? driverRating,
  String? paymentId,
  String? totalTime,
}) {
  final firestoreData = serializers.toFirestore(
    RideRecord.serializer,
    RideRecord(
      (r) => r
        ..uid = uid
        ..dropoff = dropoff
        ..end = end
        ..status = status
        ..vehicleId = vehicleId
        ..driverId = driverId
        ..pickup = pickup
        ..timeRequested = timeRequested
        ..passengerId = passengerId
        ..driverRating = driverRating
        ..paymentId = paymentId
        ..totalTime = totalTime,
    ),
  );

  return firestoreData;
}
