import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'image_network_controller.g.dart';

@Injectable(singleton: false)
class ImageNetworkController = _ImageNetworkControllerBase
    with _$ImageNetworkController;

abstract class _ImageNetworkControllerBase with Store {}
