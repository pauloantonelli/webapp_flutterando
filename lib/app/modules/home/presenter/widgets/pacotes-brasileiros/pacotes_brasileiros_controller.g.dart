// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pacotes_brasileiros_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PacotesBrasileirosController = BindInject(
  (i) =>
      PacotesBrasileirosController(i<ScreenSize>(), i<IGetBrasilianPackages>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PacotesBrasileirosController
    on _PacotesBrasileirosControllerBase, Store {
  final _$listBrasilianPackagesAtom =
      Atom(name: '_PacotesBrasileirosControllerBase.listBrasilianPackages');

  @override
  List<BrasilianPackagesEntity> get listBrasilianPackages {
    _$listBrasilianPackagesAtom.reportRead();
    return super.listBrasilianPackages;
  }

  @override
  set listBrasilianPackages(List<BrasilianPackagesEntity> value) {
    _$listBrasilianPackagesAtom.reportWrite(value, super.listBrasilianPackages,
        () {
      super.listBrasilianPackages = value;
    });
  }

  final _$getBrasilianPackagesAsyncAction =
      AsyncAction('_PacotesBrasileirosControllerBase.getBrasilianPackages');

  @override
  Future getBrasilianPackages() {
    return _$getBrasilianPackagesAsyncAction
        .run(() => super.getBrasilianPackages());
  }

  @override
  String toString() {
    return '''
listBrasilianPackages: ${listBrasilianPackages}
    ''';
  }
}
