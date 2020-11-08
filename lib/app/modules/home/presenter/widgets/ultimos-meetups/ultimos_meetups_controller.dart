import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_last_meetups.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/card-ultimos-meetups/card_ultimos_meetups_widget.dart';

part 'ultimos_meetups_controller.g.dart';

@Injectable()
class UltimosMeetupsController = _UltimosMeetupsControllerBase
    with _$UltimosMeetupsController;

abstract class _UltimosMeetupsControllerBase with Store {
  final ScreenSize screen;
  final IGetLastMeetups lastMeetups;
  @observable
  List<LastMeetUpsEntity> listLastMeetUps = [];

  _UltimosMeetupsControllerBase(this.screen, this.lastMeetups) {
    this.getLastMeetups();
  }

  @action
  dynamic getLastMeetups() async {
    final result = await lastMeetups.getLastMeetups();
    result.fold((l) => l, (r) {
      listLastMeetUps = r;
    });
  }

  List<Widget> generateCardUltimosMeetupsWidget() {
    return listLastMeetUps
        .map((meetup) => CardUltimosMeetupsWidget(
              model: meetup,
            ))
        .toList();
  }
}
