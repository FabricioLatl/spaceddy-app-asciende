// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingsRecord> _$listingsRecordSerializer =
    new _$ListingsRecordSerializer();

class _$ListingsRecordSerializer
    implements StructuredSerializer<ListingsRecord> {
  @override
  final Iterable<Type> types = const [ListingsRecord, _$ListingsRecord];
  @override
  final String wireName = 'ListingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tipoDeInmueble;
    if (value != null) {
      result
        ..add('tipoDeInmueble')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroDormitorios;
    if (value != null) {
      result
        ..add('numeroDormitorios')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.enConstruccion;
    if (value != null) {
      result
        ..add('enConstruccion')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.numeroBanos;
    if (value != null) {
      result
        ..add('numeroBanos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numeroEstacionamientos;
    if (value != null) {
      result
        ..add('numeroEstacionamientos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.superficie;
    if (value != null) {
      result
        ..add('superficie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.antiguedad;
    if (value != null) {
      result
        ..add('antiguedad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ListingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tipoDeInmueble':
          result.tipoDeInmueble = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numeroDormitorios':
          result.numeroDormitorios = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'enConstruccion':
          result.enConstruccion = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'numeroBanos':
          result.numeroBanos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'numeroEstacionamientos':
          result.numeroEstacionamientos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'superficie':
          result.superficie = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'antiguedad':
          result.antiguedad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ListingsRecord extends ListingsRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? tipoDeInmueble;
  @override
  final int? numeroDormitorios;
  @override
  final bool? enConstruccion;
  @override
  final int? numeroBanos;
  @override
  final int? numeroEstacionamientos;
  @override
  final double? superficie;
  @override
  final int? antiguedad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListingsRecord([void Function(ListingsRecordBuilder)? updates]) =>
      (new ListingsRecordBuilder()..update(updates))._build();

  _$ListingsRecord._(
      {this.name,
      this.price,
      this.tipoDeInmueble,
      this.numeroDormitorios,
      this.enConstruccion,
      this.numeroBanos,
      this.numeroEstacionamientos,
      this.superficie,
      this.antiguedad,
      this.ffRef})
      : super._();

  @override
  ListingsRecord rebuild(void Function(ListingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingsRecordBuilder toBuilder() =>
      new ListingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingsRecord &&
        name == other.name &&
        price == other.price &&
        tipoDeInmueble == other.tipoDeInmueble &&
        numeroDormitorios == other.numeroDormitorios &&
        enConstruccion == other.enConstruccion &&
        numeroBanos == other.numeroBanos &&
        numeroEstacionamientos == other.numeroEstacionamientos &&
        superficie == other.superficie &&
        antiguedad == other.antiguedad &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, tipoDeInmueble.hashCode);
    _$hash = $jc(_$hash, numeroDormitorios.hashCode);
    _$hash = $jc(_$hash, enConstruccion.hashCode);
    _$hash = $jc(_$hash, numeroBanos.hashCode);
    _$hash = $jc(_$hash, numeroEstacionamientos.hashCode);
    _$hash = $jc(_$hash, superficie.hashCode);
    _$hash = $jc(_$hash, antiguedad.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingsRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('tipoDeInmueble', tipoDeInmueble)
          ..add('numeroDormitorios', numeroDormitorios)
          ..add('enConstruccion', enConstruccion)
          ..add('numeroBanos', numeroBanos)
          ..add('numeroEstacionamientos', numeroEstacionamientos)
          ..add('superficie', superficie)
          ..add('antiguedad', antiguedad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListingsRecordBuilder
    implements Builder<ListingsRecord, ListingsRecordBuilder> {
  _$ListingsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _tipoDeInmueble;
  String? get tipoDeInmueble => _$this._tipoDeInmueble;
  set tipoDeInmueble(String? tipoDeInmueble) =>
      _$this._tipoDeInmueble = tipoDeInmueble;

  int? _numeroDormitorios;
  int? get numeroDormitorios => _$this._numeroDormitorios;
  set numeroDormitorios(int? numeroDormitorios) =>
      _$this._numeroDormitorios = numeroDormitorios;

  bool? _enConstruccion;
  bool? get enConstruccion => _$this._enConstruccion;
  set enConstruccion(bool? enConstruccion) =>
      _$this._enConstruccion = enConstruccion;

  int? _numeroBanos;
  int? get numeroBanos => _$this._numeroBanos;
  set numeroBanos(int? numeroBanos) => _$this._numeroBanos = numeroBanos;

  int? _numeroEstacionamientos;
  int? get numeroEstacionamientos => _$this._numeroEstacionamientos;
  set numeroEstacionamientos(int? numeroEstacionamientos) =>
      _$this._numeroEstacionamientos = numeroEstacionamientos;

  double? _superficie;
  double? get superficie => _$this._superficie;
  set superficie(double? superficie) => _$this._superficie = superficie;

  int? _antiguedad;
  int? get antiguedad => _$this._antiguedad;
  set antiguedad(int? antiguedad) => _$this._antiguedad = antiguedad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListingsRecordBuilder() {
    ListingsRecord._initializeBuilder(this);
  }

  ListingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _tipoDeInmueble = $v.tipoDeInmueble;
      _numeroDormitorios = $v.numeroDormitorios;
      _enConstruccion = $v.enConstruccion;
      _numeroBanos = $v.numeroBanos;
      _numeroEstacionamientos = $v.numeroEstacionamientos;
      _superficie = $v.superficie;
      _antiguedad = $v.antiguedad;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingsRecord;
  }

  @override
  void update(void Function(ListingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingsRecord build() => _build();

  _$ListingsRecord _build() {
    final _$result = _$v ??
        new _$ListingsRecord._(
            name: name,
            price: price,
            tipoDeInmueble: tipoDeInmueble,
            numeroDormitorios: numeroDormitorios,
            enConstruccion: enConstruccion,
            numeroBanos: numeroBanos,
            numeroEstacionamientos: numeroEstacionamientos,
            superficie: superficie,
            antiguedad: antiguedad,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
