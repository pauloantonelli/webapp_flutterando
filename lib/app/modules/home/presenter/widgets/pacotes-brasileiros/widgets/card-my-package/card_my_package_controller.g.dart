// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_my_package_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CardMyPackageController = BindInject(
  (i) => CardMyPackageController(i<ScreenSize>(), i<ISendBrasilianPackages>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardMyPackageController on _CardMyPackageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_CardMyPackageControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_CardMyPackageControllerBaseActionController =
      ActionController(name: '_CardMyPackageControllerBase');

  @override
  dynamic changeLoadingState() {
    final _$actionInfo = _$_CardMyPackageControllerBaseActionController
        .startAction(name: '_CardMyPackageControllerBase.changeLoadingState');
    try {
      return super.changeLoadingState();
    } finally {
      _$_CardMyPackageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
