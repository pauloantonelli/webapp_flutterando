import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/brasilian_cases_datasource.dart';
import 'package:flutterando/app/modules/home/infra/datasource/brasilian_cases_datasource.dart';

main() {
  final IGetBrasilianCasesDataSource dataSource =
      new GetBrasilianCasesDataSource();

  group('GetBrasilianCasesDataSource Test:', () {
    test('deve retornar a lista de cases sem erros', () async {
      final result = await dataSource.getBrasilianCases();
      expect(result, isA<List<BrasilianCasesEntity>>());
    });
  });
}
