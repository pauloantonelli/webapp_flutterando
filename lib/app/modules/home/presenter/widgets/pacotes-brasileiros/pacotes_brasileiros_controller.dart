import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/brasilian_packages.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/card-pacotes-brasileiros/card_pacotes_brasileiros_widget.dart';

part 'pacotes_brasileiros_controller.g.dart';

@Injectable()
class PacotesBrasileirosController = _PacotesBrasileirosControllerBase
    with _$PacotesBrasileirosController;

abstract class _PacotesBrasileirosControllerBase with Store {
  final ScreenSize screen;
  final IGetBrasilianPackages brasilianPackages;
  @observable
  List<BrasilianPackagesEntity> listBrasilianPackages = [];

  _PacotesBrasileirosControllerBase(this.screen, this.brasilianPackages) {
    this.getBrasilianPackages();
  }

  @action
  dynamic getBrasilianPackages() async {
    final result = await this.brasilianPackages.getBrasilianPackages();
    result.fold((l) => l, (r) => this.listBrasilianPackages = r);
  }

  List<Widget> generateCardPacotesBrasileirosWidget() {
    return this
        .listBrasilianPackages
        .map((package) => CardPacotesBrasileirosWidget(
              model: package,
            ))
        .toList();
  }
}
