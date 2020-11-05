// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_flutter_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BadgeFlutterController = BindInject(
  (i) => BadgeFlutterController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BadgeFlutterController on _BadgeFlutterControllerBase, Store {
  final _$valueAtom = Atom(name: '_BadgeFlutterControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_BadgeFlutterControllerBaseActionController =
      ActionController(name: '_BadgeFlutterControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_BadgeFlutterControllerBaseActionController
        .startAction(name: '_BadgeFlutterControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_BadgeFlutterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
