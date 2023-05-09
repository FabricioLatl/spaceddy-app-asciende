import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'non_featured_listings_record.g.dart';

abstract class NonFeaturedListingsRecord
    implements
        Built<NonFeaturedListingsRecord, NonFeaturedListingsRecordBuilder> {
  static Serializer<NonFeaturedListingsRecord> get serializer =>
      _$nonFeaturedListingsRecordSerializer;

  String? get name;

  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NonFeaturedListingsRecordBuilder builder) =>
      builder
        ..name = ''
        ..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('non-featured-listings');

  static Stream<NonFeaturedListingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NonFeaturedListingsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NonFeaturedListingsRecord._();
  factory NonFeaturedListingsRecord(
          [void Function(NonFeaturedListingsRecordBuilder) updates]) =
      _$NonFeaturedListingsRecord;

  static NonFeaturedListingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNonFeaturedListingsRecordData({
  String? name,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    NonFeaturedListingsRecord.serializer,
    NonFeaturedListingsRecord(
      (n) => n
        ..name = name
        ..price = price,
    ),
  );

  return firestoreData;
}
