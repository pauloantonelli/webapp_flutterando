import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/brasilian_packages_datasource.dart';

part 'brasilian_packages_datasource.g.dart';

@Injectable()
class GetBrasilianPackagesDataSource
    implements IGetBrasilianPackagesDataSource {
  final brasilianPackagesMock = {
    'data': [
      {
        'packages': [
          {
            'title': 'flutter_modular',
            'developer': 'flutterando',
            'version': '2.0.1',
            'description':
                "As an application project grows and becomes complex, it's hard to keep your code and project structure mantainable and reusable. Modular provides a bunch of Flutter-suiting solutions to deal with this problem, like dependency injection, routing system and the 'disposable singleton' system (that is, Modular disposes the injected module automatically as it is out of scope). Modular's dependency injection system has out-of-the-box support for any state management system, managing your application memory usage.",
            'pubdev': 'https://pub.dev/packages/flutter_modular',
          },
          {
            'title': 'native_pdf_view',
            'developer': 'serge.software',
            'version': '3.8.0',
            'description':
                ' Plugin to render PDF and show a PDF file on Web, MacOs 10.11+, Android 5.0+ and iOS.',
            'pubdev': 'https://pub.dev/packages/native_pdf_view',
          },
        ],
      }
    ]
  };

  @override
  Future<List<BrasilianPackagesEntity>> getBrasilianPackages() async {
    final brasilianPackagesList = brasilianPackagesMock['data'][0]['packages'];
    var packagesList = new List<BrasilianPackagesEntity>.generate(
      brasilianPackagesList.length,
      (index) => BrasilianPackagesEntity(
        packageName: brasilianPackagesList[index]['title'],
        developerName: brasilianPackagesList[index]['developer'],
        version: brasilianPackagesList[index]['version'],
        description: brasilianPackagesList[index]['description'],
        externalLink: brasilianPackagesList[index]['pubdev'],
      ),
    );
    return packagesList;
  }
}
