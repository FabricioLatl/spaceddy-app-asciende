import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listings_record.g.dart';

abstract class ListingsRecord
    implements Built<ListingsRecord, ListingsRecordBuilder> {
  static Serializer<ListingsRecord> get serializer =>
      _$listingsRecordSerializer;

  String? get name;

  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListingsRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListingsRecord._();
  factory ListingsRecord([void Function(ListingsRecordBuilder) updates]) =
      _$ListingsRecord;

  static ListingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListingsRecordData({
  String? name,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    ListingsRecord.serializer,
    ListingsRecord(
      (l) => l
        ..name = name
        ..price = price,
    ),
  );

  return firestoreData;
}
