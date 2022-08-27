import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rides_record.g.dart';

abstract class RidesRecord implements Built<RidesRecord, RidesRecordBuilder> {
  static Serializer<RidesRecord> get serializer => _$ridesRecordSerializer;

  @BuiltValueField(wireName: 'ride_id')
  String? get rideId;

  @BuiltValueField(wireName: 'driver_id')
  DocumentReference? get driverId;

  @BuiltValueField(wireName: 'passenger_id')
  DocumentReference? get passengerId;

  @BuiltValueField(wireName: 'vehicle_id')
  DocumentReference? get vehicleId;

  @BuiltValueField(wireName: 'ride_pickup_location')
  LatLng? get ridePickupLocation;

  @BuiltValueField(wireName: 'ride_pickup_day')
  DateTime? get ridePickupDay;

  @BuiltValueField(wireName: 'ride_pickup_time')
  DateTime? get ridePickupTime;

  @BuiltValueField(wireName: 'ride_dropoff_location')
  LatLng? get rideDropoffLocation;

  @BuiltValueField(wireName: 'ride_dropoff_day')
  DateTime? get rideDropoffDay;

  @BuiltValueField(wireName: 'ride_dropoff_time')
  DateTime? get rideDropoffTime;

  @BuiltValueField(wireName: 'passenger_rating')
  double? get passengerRating;

  @BuiltValueField(wireName: 'ride_time_requested')
  DateTime? get rideTimeRequested;

  @BuiltValueField(wireName: 'ride_special_request')
  String? get rideSpecialRequest;

  @BuiltValueField(wireName: 'ride_pickup_address')
  String? get ridePickupAddress;

  @BuiltValueField(wireName: 'ride_dropoff_address')
  String? get rideDropoffAddress;

  @BuiltValueField(wireName: 'driver_location')
  LatLng? get driverLocation;

  @BuiltValueField(wireName: 'passenger_location')
  LatLng? get passengerLocation;

  @BuiltValueField(wireName: 'ride_type')
  String? get rideType;

  @BuiltValueField(wireName: 'ride_extra_stops')
  BuiltList<String>? get rideExtraStops;

  @BuiltValueField(wireName: 'total_ride')
  double? get totalRide;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RidesRecordBuilder builder) => builder
    ..rideId = ''
    ..passengerRating = 0.0
    ..rideSpecialRequest = ''
    ..ridePickupAddress = ''
    ..rideDropoffAddress = ''
    ..rideType = ''
    ..rideExtraStops = ListBuilder()
    ..totalRide = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rides');

  static Stream<RidesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RidesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RidesRecord._();
  factory RidesRecord([void Function(RidesRecordBuilder) updates]) =
      _$RidesRecord;

  static RidesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRidesRecordData({
  String? rideId,
  DocumentReference? driverId,
  DocumentReference? passengerId,
  DocumentReference? vehicleId,
  LatLng? ridePickupLocation,
  DateTime? ridePickupDay,
  DateTime? ridePickupTime,
  LatLng? rideDropoffLocation,
  DateTime? rideDropoffDay,
  DateTime? rideDropoffTime,
  double? passengerRating,
  DateTime? rideTimeRequested,
  String? rideSpecialRequest,
  String? ridePickupAddress,
  String? rideDropoffAddress,
  LatLng? driverLocation,
  LatLng? passengerLocation,
  String? rideType,
  double? totalRide,
}) {
  final firestoreData = serializers.toFirestore(
    RidesRecord.serializer,
    RidesRecord(
      (r) => r
        ..rideId = rideId
        ..driverId = driverId
        ..passengerId = passengerId
        ..vehicleId = vehicleId
        ..ridePickupLocation = ridePickupLocation
        ..ridePickupDay = ridePickupDay
        ..ridePickupTime = ridePickupTime
        ..rideDropoffLocation = rideDropoffLocation
        ..rideDropoffDay = rideDropoffDay
        ..rideDropoffTime = rideDropoffTime
        ..passengerRating = passengerRating
        ..rideTimeRequested = rideTimeRequested
        ..rideSpecialRequest = rideSpecialRequest
        ..ridePickupAddress = ridePickupAddress
        ..rideDropoffAddress = rideDropoffAddress
        ..driverLocation = driverLocation
        ..passengerLocation = passengerLocation
        ..rideType = rideType
        ..rideExtraStops = null
        ..totalRide = totalRide,
    ),
  );

  return firestoreData;
}
