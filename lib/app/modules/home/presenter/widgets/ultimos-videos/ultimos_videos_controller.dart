import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_last_videos_channel.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/card-ultimos-videos/card_ultimos_videos_widget.dart';

part 'ultimos_videos_controller.g.dart';

@Injectable()
class UltimosVideosController = _UltimosVideosControllerBase
    with _$UltimosVideosController;

abstract class _UltimosVideosControllerBase with Store {
  final ScreenSize screen;
  final IGetLastVideosChannel lastVideosChannel;
  @observable
  List<LastVideosChannelEntity> videosList = [];

  _UltimosVideosControllerBase(this.screen, this.lastVideosChannel) {
    this.getLastVideosChannel();
  }

  @action
  dynamic getLastVideosChannel() async {
    final result = await lastVideosChannel.getLastVideos();
    result.fold((l) => l, (r) => this.videosList = r);
  }

  List<Widget> generateCardUltimosVideosWidget() {
    return videosList
        .map((video) => CardUltimosVideosWidget(
              model: video,
            ))
        .toList();
  }
}
