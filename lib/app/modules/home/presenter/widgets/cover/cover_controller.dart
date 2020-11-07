import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_social_members_numbers.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/icones-redes-sociais/icones_redes_sociais_widget.dart';

part 'cover_controller.g.dart';

@Injectable()
class CoverController = _CoverControllerBase with _$CoverController;

abstract class _CoverControllerBase with Store {
  final ScreenSize screen;
  final ISocialMembersNumbers socialMembersNumbers;
  @observable
  List<SocialMembersNumbersEntity> listRedesSociais = [];

  _CoverControllerBase(this.screen, this.socialMembersNumbers) {
    this.getSocialMembersNumbers();
  }

  @action
  getSocialMembersNumbers() async {
    final result = await socialMembersNumbers.getSocialMembersNumbers();
    result.fold((l) => l, (r) {
      listRedesSociais = r;
    });
  }

  List<Widget> generateIconesRedesSociaisWidget() {
    return listRedesSociais
        .map((redeSocial) => IconesRedesSociaisWidget(
              model: redeSocial,
            ))
        .toList();
  }
}
