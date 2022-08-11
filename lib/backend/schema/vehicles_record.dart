import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicles_record.g.dart';

abstract class VehiclesRecord
    implements Built<VehiclesRecord, VehiclesRecordBuilder> {
  static Serializer<VehiclesRecord> get serializer =>
      _$vehiclesRecordSerializer;

  String? get id;

  String? get make;

  String? get model;

  int? get year;

  @BuiltValueField(wireName: 'license_plate')
  String? get licensePlate;

  String? get type;

  @BuiltValueField(wireName: 'base_rate')
  int? get baseRate;

  String? get color;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VehiclesRecordBuilder builder) => builder
    ..id = ''
    ..make = ''
    ..model = ''
    ..year = 0
    ..licensePlate = ''
    ..type = ''
    ..baseRate = 0
    ..color = ''
    ..image = '';

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
  String? id,
  String? make,
  String? model,
  int? year,
  String? licensePlate,
  String? type,
  int? baseRate,
  String? color,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    VehiclesRecord.serializer,
    VehiclesRecord(
      (v) => v
        ..id = id
        ..make = make
        ..model = model
        ..year = year
        ..licensePlate = licensePlate
        ..type = type
        ..baseRate = baseRate
        ..color = color
        ..image = image,
    ),
  );

  return firestoreData;
}
