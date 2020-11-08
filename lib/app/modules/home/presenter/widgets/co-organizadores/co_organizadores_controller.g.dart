// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_organizadores_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CoOrganizadoresController = BindInject(
  (i) => CoOrganizadoresController(i<ScreenSize>(), i<IGetCoOrganizers>()),
  singleton: false,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CoOrganizadoresController on _CoOrganizadoresControllerBase, Store {
  final _$organizersListAtom =
      Atom(name: '_CoOrganizadoresControllerBase.organizersList');

  @override
  List<CoOrganizerEntity> get organizersList {
    _$organizersListAtom.reportRead();
    return super.organizersList;
  }

  @override
  set organizersList(List<CoOrganizerEntity> value) {
    _$organizersListAtom.reportWrite(value, super.organizersList, () {
      super.organizersList = value;
    });
  }

  final _$getCoOrganizersAsyncAction =
      AsyncAction('_CoOrganizadoresControllerBase.getCoOrganizers');

  @override
  Future getCoOrganizers() {
    return _$getCoOrganizersAsyncAction.run(() => super.getCoOrganizers());
  }

  @override
  String toString() {
    return '''
organizersList: ${organizersList}
    ''';
  }
}
