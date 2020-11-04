// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_ultimos_meetups_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CardUltimosMeetupsController = BindInject(
  (i) => CardUltimosMeetupsController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardUltimosMeetupsController
    on _CardUltimosMeetupsControllerBase, Store {
  final _$valueAtom = Atom(name: '_CardUltimosMeetupsControllerBase.value');

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

  final _$_CardUltimosMeetupsControllerBaseActionController =
      ActionController(name: '_CardUltimosMeetupsControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CardUltimosMeetupsControllerBaseActionController
        .startAction(name: '_CardUltimosMeetupsControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CardUltimosMeetupsControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
