// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ultimos_videos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $UltimosVideosController = BindInject(
  (i) => UltimosVideosController(i<ScreenSize>(), i<IGetLastVideosChannel>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UltimosVideosController on _UltimosVideosControllerBase, Store {
  final _$videosListAtom =
      Atom(name: '_UltimosVideosControllerBase.videosList');

  @override
  List<LastVideosChannelEntity> get videosList {
    _$videosListAtom.reportRead();
    return super.videosList;
  }

  @override
  set videosList(List<LastVideosChannelEntity> value) {
    _$videosListAtom.reportWrite(value, super.videosList, () {
      super.videosList = value;
    });
  }

  final _$getLastVideosChannelAsyncAction =
      AsyncAction('_UltimosVideosControllerBase.getLastVideosChannel');

  @override
  Future getLastVideosChannel() {
    return _$getLastVideosChannelAsyncAction
        .run(() => super.getLastVideosChannel());
  }

  @override
  String toString() {
    return '''
videosList: ${videosList}
    ''';
  }
}
