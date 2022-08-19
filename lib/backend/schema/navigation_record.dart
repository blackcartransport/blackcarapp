import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'navigation_record.g.dart';

abstract class NavigationRecord
    implements Built<NavigationRecord, NavigationRecordBuilder> {
  static Serializer<NavigationRecord> get serializer =>
      _$navigationRecordSerializer;

  @BuiltValueField(wireName: 'link_name')
  String? get linkName;

  @BuiltValueField(wireName: 'link_icon')
  String? get linkIcon;

  @BuiltValueField(wireName: 'link_url')
  String? get linkUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NavigationRecordBuilder builder) => builder
    ..linkName = ''
    ..linkIcon = ''
    ..linkUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('navigation');

  static Stream<NavigationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NavigationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NavigationRecord._();
  factory NavigationRecord([void Function(NavigationRecordBuilder) updates]) =
      _$NavigationRecord;

  static NavigationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNavigationRecordData({
  String? linkName,
  String? linkIcon,
  String? linkUrl,
}) {
  final firestoreData = serializers.toFirestore(
    NavigationRecord.serializer,
    NavigationRecord(
      (n) => n
        ..linkName = linkName
        ..linkIcon = linkIcon
        ..linkUrl = linkUrl,
    ),
  );

  return firestoreData;
}
