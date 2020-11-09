import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_parceiros_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_parceiros_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_parceiros_repository.dart';
import 'package:mockito/mockito.dart';

class GetParceirosDataSourceMock extends Mock
    implements IGetParceirosDataSource {}

main() {
  final IGetParceirosDataSource _dataSource = new GetParceirosDataSourceMock();
  final IGetParceirosRepository repository =
      new GetParceirosRepository(_dataSource);
  final dataMock = new ParceirosEntity();

  group('GetParceirosRepository Test:', () {
    test('deve retornar lista de parceiros sem erro', () async {
      when(_dataSource.getParceiros()).thenAnswer((_) async => [dataMock]);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Right>());
      expect(result | null, isA<List<ParceirosEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorBrasilianCases se a lista de cases brasilieiros for nula',
        () async {
      when(_dataSource.getParceiros()).thenAnswer((_) async => null);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Left>());
      expect(
          result.fold((l) => l, (r) => r), isA<NullDataSourceErrorParceiros>());
    });
  });
}
