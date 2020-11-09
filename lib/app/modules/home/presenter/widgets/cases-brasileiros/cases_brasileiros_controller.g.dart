// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cases_brasileiros_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CasesBrasileirosController = BindInject(
  (i) => CasesBrasileirosController(i<ScreenSize>(), i<IGetBrasilianCases>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CasesBrasileirosController on _CasesBrasileirosControllerBase, Store {
  final _$casesListAtom =
      Atom(name: '_CasesBrasileirosControllerBase.casesList');

  @override
  List<BrasilianCasesEntity> get casesList {
    _$casesListAtom.reportRead();
    return super.casesList;
  }

  @override
  set casesList(List<BrasilianCasesEntity> value) {
    _$casesListAtom.reportWrite(value, super.casesList, () {
      super.casesList = value;
    });
  }

  final _$getbrasilianCasesAsyncAction =
      AsyncAction('_CasesBrasileirosControllerBase.getbrasilianCases');

  @override
  Future getbrasilianCases() {
    return _$getbrasilianCasesAsyncAction.run(() => super.getbrasilianCases());
  }

  @override
  String toString() {
    return '''
casesList: ${casesList}
    ''';
  }
}
