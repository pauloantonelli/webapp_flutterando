import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'screen-size.g.dart';

@Injectable(singleton: false)
class ScreenSize {
  bool isDesktopXl({BuildContext context}) {
    return MediaQuery.of(context).size.width > 1280.0;
  }

  bool isDesktopLg({BuildContext context}) {
    return MediaQuery.of(context).size.width > 800.0 &&
        MediaQuery.of(context).size.width < 1280.0;
  }

  bool isTablet({BuildContext context}) {
    return MediaQuery.of(context).size.width > 599.0 &&
        MediaQuery.of(context).size.width < 800.0;
  }

  bool isMobile({BuildContext context}) {
    return MediaQuery.of(context).size.width > 375.0 &&
        MediaQuery.of(context).size.width < 599.0;
  }

  bool isWatch({BuildContext context}) {
    return MediaQuery.of(context).size.width < 375.0;
  }

  double atualScreenWidth({BuildContext context}) {
    return MediaQuery.of(context).size.width;
  }
}
