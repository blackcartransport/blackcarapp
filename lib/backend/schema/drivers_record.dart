import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'drivers_record.g.dart';

abstract class DriversRecord
    implements Built<DriversRecord, DriversRecordBuilder> {
  static Serializer<DriversRecord> get serializer => _$driversRecordSerializer;

  @BuiltValueField(wireName: 'driver_id')
  String? get driverId;

  @BuiltValueField(wireName: 'driver_first_name')
  String? get driverFirstName;

  @BuiltValueField(wireName: 'driver_last_name')
  String? get driverLastName;

  @BuiltValueField(wireName: 'driver_photo_url')
  String? get driverPhotoUrl;

  @BuiltValueField(wireName: 'driver_creation_date')
  DateTime? get driverCreationDate;

  @BuiltValueField(wireName: 'driver_license')
  String? get driverLicense;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DriversRecordBuilder builder) => builder
    ..driverId = ''
    ..driverFirstName = ''
    ..driverLastName = ''
    ..driverPhotoUrl = ''
    ..driverLicense = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drivers');

  static Stream<DriversRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DriversRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DriversRecord._();
  factory DriversRecord([void Function(DriversRecordBuilder) updates]) =
      _$DriversRecord;

  static DriversRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDriversRecordData({
  String? driverId,
  String? driverFirstName,
  String? driverLastName,
  String? driverPhotoUrl,
  DateTime? driverCreationDate,
  String? driverLicense,
}) {
  final firestoreData = serializers.toFirestore(
    DriversRecord.serializer,
    DriversRecord(
      (d) => d
        ..driverId = driverId
        ..driverFirstName = driverFirstName
        ..driverLastName = driverLastName
        ..driverPhotoUrl = driverPhotoUrl
        ..driverCreationDate = driverCreationDate
        ..driverLicense = driverLicense,
    ),
  );

  return firestoreData;
}
