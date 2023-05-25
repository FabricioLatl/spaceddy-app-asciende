import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NonFeaturedListingsRecord extends FirestoreRecord {
  NonFeaturedListingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "tipoDeInmueble" field.
  String? _tipoDeInmueble;
  String get tipoDeInmueble => _tipoDeInmueble ?? '';
  bool hasTipoDeInmueble() => _tipoDeInmueble != null;

  // "numeroDormitorios" field.
  int? _numeroDormitorios;
  int get numeroDormitorios => _numeroDormitorios ?? 0;
  bool hasNumeroDormitorios() => _numeroDormitorios != null;

  // "enConstruccion" field.
  bool? _enConstruccion;
  bool get enConstruccion => _enConstruccion ?? false;
  bool hasEnConstruccion() => _enConstruccion != null;

  // "numeroBanos" field.
  int? _numeroBanos;
  int get numeroBanos => _numeroBanos ?? 0;
  bool hasNumeroBanos() => _numeroBanos != null;

  // "numeroEstacionamientos" field.
  int? _numeroEstacionamientos;
  int get numeroEstacionamientos => _numeroEstacionamientos ?? 0;
  bool hasNumeroEstacionamientos() => _numeroEstacionamientos != null;

  // "superficie" field.
  double? _superficie;
  double get superficie => _superficie ?? 0.0;
  bool hasSuperficie() => _superficie != null;

  // "antiguedad" field.
  int? _antiguedad;
  int get antiguedad => _antiguedad ?? 0;
  bool hasAntiguedad() => _antiguedad != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "userThatCreated" field.
  DocumentReference? _userThatCreated;
  DocumentReference? get userThatCreated => _userThatCreated;
  bool hasUserThatCreated() => _userThatCreated != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _tipoDeInmueble = snapshotData['tipoDeInmueble'] as String?;
    _numeroDormitorios = snapshotData['numeroDormitorios'] as int?;
    _enConstruccion = snapshotData['enConstruccion'] as bool?;
    _numeroBanos = snapshotData['numeroBanos'] as int?;
    _numeroEstacionamientos = snapshotData['numeroEstacionamientos'] as int?;
    _superficie = castToType<double>(snapshotData['superficie']);
    _antiguedad = snapshotData['antiguedad'] as int?;
    _location = snapshotData['location'] as LatLng?;
    _images = getDataList(snapshotData['images']);
    _description = snapshotData['description'] as String?;
    _userThatCreated = snapshotData['userThatCreated'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('non-featured-listings');

  static Stream<NonFeaturedListingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NonFeaturedListingsRecord.fromSnapshot(s));

  static Future<NonFeaturedListingsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NonFeaturedListingsRecord.fromSnapshot(s));

  static NonFeaturedListingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NonFeaturedListingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NonFeaturedListingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NonFeaturedListingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NonFeaturedListingsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createNonFeaturedListingsRecordData({
  String? name,
  double? price,
  String? tipoDeInmueble,
  int? numeroDormitorios,
  bool? enConstruccion,
  int? numeroBanos,
  int? numeroEstacionamientos,
  double? superficie,
  int? antiguedad,
  LatLng? location,
  String? description,
  DocumentReference? userThatCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'tipoDeInmueble': tipoDeInmueble,
      'numeroDormitorios': numeroDormitorios,
      'enConstruccion': enConstruccion,
      'numeroBanos': numeroBanos,
      'numeroEstacionamientos': numeroEstacionamientos,
      'superficie': superficie,
      'antiguedad': antiguedad,
      'location': location,
      'description': description,
      'userThatCreated': userThatCreated,
    }.withoutNulls,
  );

  return firestoreData;
}
