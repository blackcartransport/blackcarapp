import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicles_record.g.dart';

abstract class VehiclesRecord
    implements Built<VehiclesRecord, VehiclesRecordBuilder> {
  static Serializer<VehiclesRecord> get serializer =>
      _$vehiclesRecordSerializer;

  @BuiltValueField(wireName: 'vehicle_make')
  String? get vehicleMake;

  @BuiltValueField(wireName: 'vehicle_model')
  String? get vehicleModel;

  @BuiltValueField(wireName: 'vehicle_license_plate')
  String? get vehicleLicensePlate;

  @BuiltValueField(wireName: 'vehicle_type')
  String? get vehicleType;

  @BuiltValueField(wireName: 'vehicle_base_rate')
  int? get vehicleBaseRate;

  @BuiltValueField(wireName: 'vehicle_id')
  String? get vehicleId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VehiclesRecordBuilder builder) => builder
    ..vehicleMake = ''
    ..vehicleModel = ''
    ..vehicleLicensePlate = ''
    ..vehicleType = ''
    ..vehicleBaseRate = 0
    ..vehicleId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicles');

  static Stream<VehiclesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VehiclesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VehiclesRecord._();
  factory VehiclesRecord([void Function(VehiclesRecordBuilder) updates]) =
      _$VehiclesRecord;

  static VehiclesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVehiclesRecordData({
  String? vehicleMake,
  String? vehicleModel,
  String? vehicleLicensePlate,
  String? vehicleType,
  int? vehicleBaseRate,
  String? vehicleId,
}) {
  final firestoreData = serializers.toFirestore(
    VehiclesRecord.serializer,
    VehiclesRecord(
      (v) => v
        ..vehicleMake = vehicleMake
        ..vehicleModel = vehicleModel
        ..vehicleLicensePlate = vehicleLicensePlate
        ..vehicleType = vehicleType
        ..vehicleBaseRate = vehicleBaseRate
        ..vehicleId = vehicleId,
    ),
  );

  return firestoreData;
}
