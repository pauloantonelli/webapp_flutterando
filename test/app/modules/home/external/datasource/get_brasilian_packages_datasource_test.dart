import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/get_brasilian_packages_datasource.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_brasilian_packages_datasource.dart';

main() {
  final IGetBrasilianPackagesDataSource dataSource =
      new GetBrasilianPackagesDataSource();

  group('GetCoOrganizersDataSource Test:', () {
    test('deve retornar a lista de packages sem erros', () async {
      final result = await dataSource.getBrasilianPackages();
      expect(result, isA<List<BrasilianPackagesEntity>>());
    });
  });
}
