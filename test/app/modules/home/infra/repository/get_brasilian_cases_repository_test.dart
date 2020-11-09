import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_brasilian_cases_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_brasilian_cases_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_brasilian_cases_repository.dart';
import 'package:mockito/mockito.dart';

class GetBrasilianCasesDataSourceMock extends Mock
    implements IGetBrasilianCasesDataSource {}

main() {
  final IGetBrasilianCasesDataSource _dataSource =
      new GetBrasilianCasesDataSourceMock();
  final IGetBrasilianCasesRepository repository =
      new GetBrasilianCasesRepository(_dataSource);
  final dataMock = new BrasilianCasesEntity();

  group('GetBrasilianCasesRepository Test:', () {
    test('deve retornar lista de cases brasileiros sem erro', () async {
      when(_dataSource.getBrasilianCases()).thenAnswer((_) async => [dataMock]);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Right>());
      expect(result | null, isA<List<BrasilianCasesEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorBrasilianCases se a lista de cases brasilieiros for nula',
        () async {
      when(_dataSource.getBrasilianCases()).thenAnswer((_) async => null);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorBrasilianCases>());
    });
  });
}
