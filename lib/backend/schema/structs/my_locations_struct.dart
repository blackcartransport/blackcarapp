import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_locations_struct.g.dart';

abstract class MyLocationsStruct
    implements Built<MyLocationsStruct, MyLocationsStructBuilder> {
  static Serializer<MyLocationsStruct> get serializer =>
      _$myLocationsStructSerializer;

  LatLng? get locationCode;

  String? get locationName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(MyLocationsStructBuilder builder) => builder
    ..locationName = ''
    ..firestoreUtilData = FirestoreUtilData();

  MyLocationsStruct._();
  factory MyLocationsStruct([void Function(MyLocationsStructBuilder) updates]) =
      _$MyLocationsStruct;
}

MyLocationsStruct createMyLocationsStruct({
  LatLng? locationCode,
  String? locationName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MyLocationsStruct(
      (m) => m
        ..locationCode = locationCode
        ..locationName = locationName
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

MyLocationsStruct? updateMyLocationsStruct(
  MyLocationsStruct? myLocations, {
  bool clearUnsetFields = true,
}) =>
    myLocations != null
        ? (myLocations.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addMyLocationsStructData(
  Map<String, dynamic> firestoreData,
  MyLocationsStruct? myLocations,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (myLocations == null) {
    return;
  }
  if (myLocations.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && myLocations.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final myLocationsData =
      getMyLocationsFirestoreData(myLocations, forFieldValue);
  final nestedData =
      myLocationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = myLocations.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getMyLocationsFirestoreData(
  MyLocationsStruct? myLocations, [
  bool forFieldValue = false,
]) {
  if (myLocations == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(MyLocationsStruct.serializer, myLocations);

  // Add any Firestore field values
  myLocations.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMyLocationsListFirestoreData(
  List<MyLocationsStruct>? myLocationss,
) =>
    myLocationss?.map((m) => getMyLocationsFirestoreData(m, true)).toList() ??
    [];
