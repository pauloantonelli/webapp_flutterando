// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CoverController = BindInject(
  (i) => CoverController(i<ScreenSize>(), i<ISocialMembersNumbers>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CoverController on _CoverControllerBase, Store {
  final _$listRedesSociaisAtom =
      Atom(name: '_CoverControllerBase.listRedesSociais');

  @override
  List<SocialMembersNumbersEntity> get listRedesSociais {
    _$listRedesSociaisAtom.reportRead();
    return super.listRedesSociais;
  }

  @override
  set listRedesSociais(List<SocialMembersNumbersEntity> value) {
    _$listRedesSociaisAtom.reportWrite(value, super.listRedesSociais, () {
      super.listRedesSociais = value;
    });
  }

  final _$getSocialMembersNumbersAsyncAction =
      AsyncAction('_CoverControllerBase.getSocialMembersNumbers');

  @override
  Future getSocialMembersNumbers() {
    return _$getSocialMembersNumbersAsyncAction
        .run(() => super.getSocialMembersNumbers());
  }

  @override
  String toString() {
    return '''
listRedesSociais: ${listRedesSociais}
    ''';
  }
}
