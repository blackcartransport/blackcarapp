import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favorite_location_record.g.dart';

abstract class FavoriteLocationRecord
    implements Built<FavoriteLocationRecord, FavoriteLocationRecordBuilder> {
  static Serializer<FavoriteLocationRecord> get serializer =>
      _$favoriteLocationRecordSerializer;

  @BuiltValueField(wireName: 'location_owner')
  DocumentReference? get locationOwner;

  @BuiltValueField(wireName: 'location_name')
  String? get locationName;

  @BuiltValueField(wireName: 'location_address')
  String? get locationAddress;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FavoriteLocationRecordBuilder builder) =>
      builder
        ..locationName = ''
        ..locationAddress = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorite_location');

  static Stream<FavoriteLocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FavoriteLocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FavoriteLocationRecord._();
  factory FavoriteLocationRecord(
          [void Function(FavoriteLocationRecordBuilder) updates]) =
      _$FavoriteLocationRecord;

  static FavoriteLocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFavoriteLocationRecordData({
  DocumentReference? locationOwner,
  String? locationName,
  String? locationAddress,
}) {
  final firestoreData = serializers.toFirestore(
    FavoriteLocationRecord.serializer,
    FavoriteLocationRecord(
      (f) => f
        ..locationOwner = locationOwner
        ..locationName = locationName
        ..locationAddress = locationAddress,
    ),
  );

  return firestoreData;
}
