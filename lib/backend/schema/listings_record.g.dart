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
  final DocumentReference<Object?>? ffRef;

  factory _$ListingsRecord([void Function(ListingsRecordBuilder)? updates]) =>
      (new ListingsRecordBuilder()..update(updates))._build();

  _$ListingsRecord._({this.name, this.price, this.ffRef}) : super._();

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
    return (newBuiltValueToStringHelper(r'ListingsRecord')
          ..add('name', name)
          ..add('price', price)
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
    final _$result =
        _$v ?? new _$ListingsRecord._(name: name, price: price, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
