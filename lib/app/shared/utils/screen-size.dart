import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'screen-size.g.dart';

@Injectable(singleton: false)
class ScreenSize {
  bool isDesktopXl({@required BuildContext context}) {
    return MediaQuery.of(context).size.width > 1280.0;
  }

  bool isDesktopLg({@required BuildContext context}) {
    return MediaQuery.of(context).size.width > 800.0 &&
        MediaQuery.of(context).size.width < 1280.0;
  }

  bool isTablet({@required BuildContext context}) {
    return MediaQuery.of(context).size.width > 599.0 &&
        MediaQuery.of(context).size.width < 800.0;
  }

  bool isMobile({@required BuildContext context}) {
    return MediaQuery.of(context).size.width > 375.0 &&
        MediaQuery.of(context).size.width < 599.0;
  }

  bool isWatch({@required BuildContext context}) {
    return MediaQuery.of(context).size.width < 375.0;
  }

  double atualScreenWidth({@required BuildContext context}) {
    return MediaQuery.of(context).size.width;
  }
}
