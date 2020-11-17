import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/badge-flutter/badge_flutter_widget.dart';

import 'footer_controller.dart';
import 'widgets/botao-enviar-mensagem/botao_enviar_mensagem_widget.dart';
import 'widgets/field-form-contato/field_form_contato_widget.dart';

class FooterWidget extends StatefulWidget {
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends ModularState<FooterWidget, FooterController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: controller.screen.atualWidth(context: context),
      padding: (controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context) ||
              controller.screen.isWatch(context: context))
          ? EdgeInsets.symmetric(horizontal: 20.0)
          : EdgeInsets.symmetric(horizontal: 0.0),
      margin: (controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context) ||
              controller.screen.isWatch(context: context))
          ? EdgeInsets.only(bottom: 50.0)
          : EdgeInsets.only(bottom: 150.0),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          Container(
            width: controller.larguraDefaut,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Text(
                      'Entre em contato conosco',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                FieldFormContatoWidget(
                  title: 'Nome',
                  // inputAutofocus: true,
                ),
                FieldFormContatoWidget(
                  title: 'Email',
                ),
                FieldFormContatoWidget(
                  title: 'Sua mensagem',
                  minInputLines: 15,
                  maxInputLines: 20,
                ),
                BotaoEnviarMensagemWidget()
              ],
            ),
          ),
          Container(
            width: controller.larguraDefaut,
            height: 500.0,
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.0,
                          child: Image.asset('assets/flutterando_logo.png'),
                        ),
                        Container(
                          child: Text(
                            'Fluterrando',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: Text('Contato',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    child: Text('email@flutterando.com.br',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w300)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: Text('Siga-nos nas redes sociais',
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w400)),
                        ),
                        Container(
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            children: [
                              ...controller.generateSocialIconButtonWidget()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Copyright © Flutterando 2020 - Todos os direitos reservados',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BadgeFlutterWidget()
        ],
      ),
    );
  }
}
