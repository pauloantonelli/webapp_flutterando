// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ultimos_meetups_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $UltimosMeetupsController = BindInject(
  (i) => UltimosMeetupsController(i<ScreenSize>(), i<IGetLastMeetups>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UltimosMeetupsController on _UltimosMeetupsControllerBase, Store {
  final _$listLastMeetUpsAtom =
      Atom(name: '_UltimosMeetupsControllerBase.listLastMeetUps');

  @override
  List<LastMeetUpsEntity> get listLastMeetUps {
    _$listLastMeetUpsAtom.reportRead();
    return super.listLastMeetUps;
  }

  @override
  set listLastMeetUps(List<LastMeetUpsEntity> value) {
    _$listLastMeetUpsAtom.reportWrite(value, super.listLastMeetUps, () {
      super.listLastMeetUps = value;
    });
  }

  final _$getLastMeetupsAsyncAction =
      AsyncAction('_UltimosMeetupsControllerBase.getLastMeetups');

  @override
  Future getLastMeetups() {
    return _$getLastMeetupsAsyncAction.run(() => super.getLastMeetups());
  }

  @override
  String toString() {
    return '''
listLastMeetUps: ${listLastMeetUps}
    ''';
  }
}
