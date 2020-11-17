import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/usecase/send_brasilian_packages.dart';
import 'package:flutterando/app/modules/home/presenter/widgets/pacotes-brasileiros/widgets/input-card/input_card_widget.dart';
import 'package:flutterando/app/shared/loading/loading_widget.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_my_package_controller.g.dart';

@Injectable()
class CardMyPackageController = _CardMyPackageControllerBase
    with _$CardMyPackageController;

abstract class _CardMyPackageControllerBase with Store {
  final ScreenSize screen;
  final ISendBrasilianPackages sendBrasilianPackages;
  double larguraDefault = 200.0;
  TextEditingController packageNameController;
  TextEditingController authorNameController;
  TextEditingController packageLinkController;
  bool enabledInputControllerState = true;
  @observable
  bool loading = false;

  _CardMyPackageControllerBase(this.screen, this.sendBrasilianPackages) {
    this.packageNameController = new TextEditingController();
    this.authorNameController = new TextEditingController();
    this.packageLinkController = new TextEditingController();
    this.disableForm();
  }

  disableForm() {
    this.enabledInputControllerState = false;
  }

  @action
  changeLoadingState() {
    this.loading = !this.loading;
  }

  resetFields() {
    this.packageNameController.clear();
    this.authorNameController.clear();
    this.packageLinkController.clear();
  }

  void submitPackage(BuildContext context) async {
    bool packageNameValid = this.packageNameController.value.text.isNotEmpty;
    bool authorNameValid = this.authorNameController.value.text.isNotEmpty;
    bool packageLinkValid = this.packageLinkController.value.text.isNotEmpty;
    if (packageNameValid && authorNameValid && packageLinkValid) {
      this.changeLoadingState();
      BrasilianPackagesEntity model = new BrasilianPackagesEntity(
        packageName: this.packageNameController.text.toString(),
        developerName: this.authorNameController.text.toString(),
        externalLink: this.packageLinkController.text.toString(),
      );
      final result = await this.sendBrasilianPackages.sendPackage(model);
      result.fold((l) {
        print('l:$l');
        this.snackbarMessage(context, l.toString());
      }, (r) {
        print('r: $r');
        final bool result = r;
        if (result == true) {
          this.snackbarMessage(
              context, 'Seu package enviado com sucesso obrigado!');
          Timer(Duration(seconds: 5), () {
            this.resetFields();
            Navigator.popUntil(context, ModalRoute.withName('/'));
          });
        } else {
          this.snackbarMessage(
              context, 'ocorreu um erro no envio, tente novamente!');
        }
      });
      this.changeLoadingState();
    } else {
      this.snackbarMessage(context, 'todos os campos são obrigatórios');
    }
  }

  void snackbarMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: Color(0xff0b0f13),
          title: Container(
            width: 500.0,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Wrap(
              children: [
                Text(
                  message,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          children: [
            Container(
              width: 500.0,
              height: 40.0,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: EdgeInsets.all(0.0),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text(
                    'Fechar',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void messageSooner(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Form(
          child: SimpleDialog(
            backgroundColor: Color(0xff0b0f13),
            title: Container(
              width: 500.0,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Wrap(
                children: [
                  Text(
                    'Envie seu Package',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Container(
                    width: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.yellow[800],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: this.enabledInputControllerState
                        ? Container()
                        : Text(
                            'em breve',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                  ),
                ],
              ),
            ),
            children: [
              InputCardWidget(
                screen: screen,
                label: 'Nome do Package',
                controller: packageNameController,
                enabled: this.enabledInputControllerState,
              ),
              InputCardWidget(
                screen: screen,
                label: 'Nome do autor',
                controller: authorNameController,
                enabled: this.enabledInputControllerState,
              ),
              InputCardWidget(
                screen: screen,
                label: 'Link do Package',
                controller: packageLinkController,
                enabled: this.enabledInputControllerState,
              ),
              Observer(builder: (_) {
                return Container(
                  width: 500.0,
                  height: 40.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: SimpleDialogOption(
                    onPressed: () {
                      this.enabledInputControllerState
                          ? this.submitPackage(context)
                          : null;
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      alignment: Alignment.center,
                      color: enabledInputControllerState
                          ? Colors.blue
                          : Colors.grey,
                      child: loading
                          ? LoadingWidget()
                          : Text(
                              'Enviar',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                );
              })
            ],
          ),
        );
      },
    );
  }
}
