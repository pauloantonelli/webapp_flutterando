import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_parceiros.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/logo-parceiros/logo_parceiros_widget.dart';

part 'parceiros_controller.g.dart';

@Injectable()
class ParceirosController = _ParceirosControllerBase with _$ParceirosController;

abstract class _ParceirosControllerBase with Store {
  final ScreenSize screen;
  final IGetParceiros parceiros;
  @observable
  List<ParceirosEntity> listParceiros = [];

  _ParceirosControllerBase(this.screen, this.parceiros) {
    this.getParceiros();
  }

  @action
  dynamic getParceiros() async {
    final result = await this.parceiros.getParceiros();
    result.fold((l) => l, (r) => this.listParceiros = r);
  }

  List<Widget> generateCardPacotesBrasileirosWidget() {
    return this
        .listParceiros
        .map((package) => LogoParceirosWidget(
              model: package,
            ))
        .toList();
  }
}
