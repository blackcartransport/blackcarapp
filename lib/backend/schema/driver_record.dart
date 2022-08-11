import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'driver_record.g.dart';

abstract class DriverRecord
    implements Built<DriverRecord, DriverRecordBuilder> {
  static Serializer<DriverRecord> get serializer => _$driverRecordSerializer;

  String? get uid;

  String? get name;

  String? get address;

  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  int? get phoneNumber;

  @BuiltValueField(wireName: 'joined_date')
  DateTime? get joinedDate;

  @BuiltValueField(wireName: 'current_vehicle')
  DocumentReference? get currentVehicle;

  @BuiltValueField(wireName: 'driver_license')
  String? get driverLicense;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DriverRecordBuilder builder) => builder
    ..uid = ''
    ..name = ''
    ..address = ''
    ..email = ''
    ..phoneNumber = 0
    ..driverLicense = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('driver');

  static Stream<DriverRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DriverRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DriverRecord._();
  factory DriverRecord([void Function(DriverRecordBuilder) updates]) =
      _$DriverRecord;

  static DriverRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDriverRecordData({
  String? uid,
  String? name,
  String? address,
  String? email,
  int? phoneNumber,
  DateTime? joinedDate,
  DocumentReference? currentVehicle,
  String? driverLicense,
}) {
  final firestoreData = serializers.toFirestore(
    DriverRecord.serializer,
    DriverRecord(
      (d) => d
        ..uid = uid
        ..name = name
        ..address = address
        ..email = email
        ..phoneNumber = phoneNumber
        ..joinedDate = joinedDate
        ..currentVehicle = currentVehicle
        ..driverLicense = driverLicense,
    ),
  );

  return firestoreData;
}
