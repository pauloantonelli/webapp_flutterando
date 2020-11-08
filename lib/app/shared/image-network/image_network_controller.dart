import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'image_network_controller.g.dart';

@Injectable()
class ImageNetworkController = _ImageNetworkControllerBase
    with _$ImageNetworkController;

abstract class _ImageNetworkControllerBase with Store {}
