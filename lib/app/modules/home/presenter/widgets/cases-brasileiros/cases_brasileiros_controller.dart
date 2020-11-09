import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_brasilian_cases.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/card-cases-brasileiros/card_cases_brasileiros_widget.dart';

part 'cases_brasileiros_controller.g.dart';

@Injectable()
class CasesBrasileirosController = _CasesBrasileirosControllerBase
    with _$CasesBrasileirosController;

abstract class _CasesBrasileirosControllerBase with Store {
  final ScreenSize screen;
  final IGetBrasilianCases brasilianCasesList;
  @observable
  List<BrasilianCasesEntity> casesList = [];

  _CasesBrasileirosControllerBase(this.screen, this.brasilianCasesList) {
    this.getbrasilianCases();
  }

  @action
  dynamic getbrasilianCases() async {
    final result = await brasilianCasesList.getBrasilianCases();
    result.fold((l) => l, (r) => this.casesList = r);
  }

  List<Widget> generateCardCasesBrasileirosWidget() {
    return casesList
        .map((brasilianCase) => CardCasesBrasileirosWidget(
              model: brasilianCase,
            ))
        .toList();
  }
}
