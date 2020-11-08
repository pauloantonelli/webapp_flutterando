import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_co_organizers.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/card-co-organizadores/card-co-organizadores_widget.dart';

part 'co_organizadores_controller.g.dart';

@Injectable(singleton: false)
class CoOrganizadoresController = _CoOrganizadoresControllerBase
    with _$CoOrganizadoresController;

abstract class _CoOrganizadoresControllerBase with Store {
  final ScreenSize screen;
  final IGetCoOrganizers coOrganizersList;
  @observable
  List<CoOrganizerEntity> organizersList = [];

  _CoOrganizadoresControllerBase(this.screen, this.coOrganizersList) {
    this.getCoOrganizers();
  }

  @action
  dynamic getCoOrganizers() async {
    final result = await coOrganizersList.getCoOrganizers();
    result.fold((l) => l, (r) => this.organizersList = r);
  }

  List<Widget> generateCoOrganizers() {
    return organizersList
        .map((organizer) => CardCoOrganizadoresWidget(
              model: organizer,
            ))
        .toList();
  }
}
