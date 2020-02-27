// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_vehicle;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VehicleTypes _$car = const VehicleTypes._('car');
const VehicleTypes _$motorbike = const VehicleTypes._('motorbike');
const VehicleTypes _$train = const VehicleTypes._('train');
const VehicleTypes _$plane = const VehicleTypes._('plane');

VehicleTypes _$valueOf(String name) {
  switch (name) {
    case 'car':
      return _$car;
    case 'motorbike':
      return _$motorbike;
    case 'train':
      return _$train;
    case 'plane':
      return _$plane;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<VehicleTypes> _$values =
    new BuiltSet<VehicleTypes>(const <VehicleTypes>[
  _$car,
  _$motorbike,
  _$train,
  _$plane,
]);

Serializer<BuiltVehicle> _$builtVehicleSerializer =
    new _$BuiltVehicleSerializer();
Serializer<VehicleTypes> _$vehicleTypesSerializer =
    new _$VehicleTypesSerializer();

class _$BuiltVehicleSerializer implements StructuredSerializer<BuiltVehicle> {
  @override
  final Iterable<Type> types = const [BuiltVehicle, _$BuiltVehicle];
  @override
  final String wireName = 'BuiltVehicle';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltVehicle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(VehicleTypes)),
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'passengerNames',
      serializers.serialize(object.passengerNames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.newCar != null) {
      result
        ..add('newCar')
        ..add(serializers.serialize(object.newCar,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BuiltVehicle deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltVehicleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(VehicleTypes)) as VehicleTypes;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'newCar':
          result.newCar = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'passengerNames':
          result.passengerNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$VehicleTypesSerializer implements PrimitiveSerializer<VehicleTypes> {
  @override
  final Iterable<Type> types = const <Type>[VehicleTypes];
  @override
  final String wireName = 'VehicleTypes';

  @override
  Object serialize(Serializers serializers, VehicleTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  VehicleTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VehicleTypes.valueOf(serialized as String);
}

class _$BuiltVehicle extends BuiltVehicle {
  @override
  final VehicleTypes type;
  @override
  final String brand;
  @override
  final double price;
  @override
  final bool newCar;
  @override
  final BuiltList<String> passengerNames;

  factory _$BuiltVehicle([void Function(BuiltVehicleBuilder) updates]) =>
      (new BuiltVehicleBuilder()..update(updates)).build();

  _$BuiltVehicle._(
      {this.type, this.brand, this.price, this.newCar, this.passengerNames})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('BuiltVehicle', 'type');
    }
    if (brand == null) {
      throw new BuiltValueNullFieldError('BuiltVehicle', 'brand');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('BuiltVehicle', 'price');
    }
    if (passengerNames == null) {
      throw new BuiltValueNullFieldError('BuiltVehicle', 'passengerNames');
    }
  }

  @override
  BuiltVehicle rebuild(void Function(BuiltVehicleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltVehicleBuilder toBuilder() => new BuiltVehicleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltVehicle &&
        type == other.type &&
        brand == other.brand &&
        price == other.price &&
        newCar == other.newCar &&
        passengerNames == other.passengerNames;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), brand.hashCode), price.hashCode),
            newCar.hashCode),
        passengerNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltVehicle')
          ..add('type', type)
          ..add('brand', brand)
          ..add('price', price)
          ..add('newCar', newCar)
          ..add('passengerNames', passengerNames))
        .toString();
  }
}

class BuiltVehicleBuilder
    implements Builder<BuiltVehicle, BuiltVehicleBuilder> {
  _$BuiltVehicle _$v;

  VehicleTypes _type;
  VehicleTypes get type => _$this._type;
  set type(VehicleTypes type) => _$this._type = type;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  bool _newCar;
  bool get newCar => _$this._newCar;
  set newCar(bool newCar) => _$this._newCar = newCar;

  ListBuilder<String> _passengerNames;
  ListBuilder<String> get passengerNames =>
      _$this._passengerNames ??= new ListBuilder<String>();
  set passengerNames(ListBuilder<String> passengerNames) =>
      _$this._passengerNames = passengerNames;

  BuiltVehicleBuilder();

  BuiltVehicleBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _brand = _$v.brand;
      _price = _$v.price;
      _newCar = _$v.newCar;
      _passengerNames = _$v.passengerNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltVehicle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltVehicle;
  }

  @override
  void update(void Function(BuiltVehicleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltVehicle build() {
    _$BuiltVehicle _$result;
    try {
      _$result = _$v ??
          new _$BuiltVehicle._(
              type: type,
              brand: brand,
              price: price,
              newCar: newCar,
              passengerNames: passengerNames.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'passengerNames';
        passengerNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltVehicle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
