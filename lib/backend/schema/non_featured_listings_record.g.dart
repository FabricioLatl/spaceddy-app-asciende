// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_featured_listings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NonFeaturedListingsRecord> _$nonFeaturedListingsRecordSerializer =
    new _$NonFeaturedListingsRecordSerializer();

class _$NonFeaturedListingsRecordSerializer
    implements StructuredSerializer<NonFeaturedListingsRecord> {
  @override
  final Iterable<Type> types = const [
    NonFeaturedListingsRecord,
    _$NonFeaturedListingsRecord
  ];
  @override
  final String wireName = 'NonFeaturedListingsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NonFeaturedListingsRecord object,
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
  NonFeaturedListingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NonFeaturedListingsRecordBuilder();

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

class _$NonFeaturedListingsRecord extends NonFeaturedListingsRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NonFeaturedListingsRecord(
          [void Function(NonFeaturedListingsRecordBuilder)? updates]) =>
      (new NonFeaturedListingsRecordBuilder()..update(updates))._build();

  _$NonFeaturedListingsRecord._({this.name, this.price, this.ffRef})
      : super._();

  @override
  NonFeaturedListingsRecord rebuild(
          void Function(NonFeaturedListingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NonFeaturedListingsRecordBuilder toBuilder() =>
      new NonFeaturedListingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NonFeaturedListingsRecord &&
        name == other.name &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NonFeaturedListingsRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NonFeaturedListingsRecordBuilder
    implements
        Builder<NonFeaturedListingsRecord, NonFeaturedListingsRecordBuilder> {
  _$NonFeaturedListingsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NonFeaturedListingsRecordBuilder() {
    NonFeaturedListingsRecord._initializeBuilder(this);
  }

  NonFeaturedListingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NonFeaturedListingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NonFeaturedListingsRecord;
  }

  @override
  void update(void Function(NonFeaturedListingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NonFeaturedListingsRecord build() => _build();

  _$NonFeaturedListingsRecord _build() {
    final _$result = _$v ??
        new _$NonFeaturedListingsRecord._(
            name: name, price: price, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
