// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parceiros_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ParceirosController = BindInject(
  (i) => ParceirosController(i<ScreenSize>(), i<IGetParceiros>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ParceirosController on _ParceirosControllerBase, Store {
  final _$listParceirosAtom =
      Atom(name: '_ParceirosControllerBase.listParceiros');

  @override
  List<ParceirosEntity> get listParceiros {
    _$listParceirosAtom.reportRead();
    return super.listParceiros;
  }

  @override
  set listParceiros(List<ParceirosEntity> value) {
    _$listParceirosAtom.reportWrite(value, super.listParceiros, () {
      super.listParceiros = value;
    });
  }

  final _$getParceirosAsyncAction =
      AsyncAction('_ParceirosControllerBase.getParceiros');

  @override
  Future getParceiros() {
    return _$getParceirosAsyncAction.run(() => super.getParceiros());
  }

  @override
  String toString() {
    return '''
listParceiros: ${listParceiros}
    ''';
  }
}
