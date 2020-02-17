// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_vehicle;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BuiltVehicle extends BuiltVehicle {
  @override
  final String brand;

  factory _$BuiltVehicle([void Function(BuiltVehicleBuilder) updates]) =>
      (new BuiltVehicleBuilder()..update(updates)).build();

  _$BuiltVehicle._({this.brand}) : super._() {
    if (brand == null) {
      throw new BuiltValueNullFieldError('BuiltVehicle', 'brand');
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
    return other is BuiltVehicle && brand == other.brand;
  }

  @override
  int get hashCode {
    return $jf($jc(0, brand.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltVehicle')..add('brand', brand))
        .toString();
  }
}

class BuiltVehicleBuilder
    implements Builder<BuiltVehicle, BuiltVehicleBuilder> {
  _$BuiltVehicle _$v;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  BuiltVehicleBuilder();

  BuiltVehicleBuilder get _$this {
    if (_$v != null) {
      _brand = _$v.brand;
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
    final _$result = _$v ?? new _$BuiltVehicle._(brand: brand);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
