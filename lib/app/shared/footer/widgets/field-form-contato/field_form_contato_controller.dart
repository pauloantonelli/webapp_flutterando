import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'field_form_contato_controller.g.dart';

@Injectable(singleton: false)
class FieldFormContatoController = _FieldFormContatoControllerBase
    with _$FieldFormContatoController;

abstract class _FieldFormContatoControllerBase with Store {}
