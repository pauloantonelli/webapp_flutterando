import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_brasilian_packages_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_brasilian_packages_repository.dart';
import 'package:mockito/mockito.dart';

class GetBrasilianPackagesDataSourceMock extends Mock
    implements IGetBrasilianPackagesDataSource {}

main() {
  final IGetBrasilianPackagesDataSource _dataSource =
      new GetBrasilianPackagesDataSourceMock();
  final IGetBrasilianPackagesRepository repository =
      new GetBrasilianPackagesRepository(_dataSource);
  final dataMock = new BrasilianPackagesEntity();

  group('GetBrasilianPackagesRepository: Test:', () {
    test('deve retornar lista dos packages brasileiros sem erro', () async {
      when(_dataSource.getBrasilianPackages())
          .thenAnswer((_) async => [dataMock]);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Right>());
      expect(result | null, isA<List<BrasilianPackagesEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorCoOrganizer se a lista dos pacotes brasilieiros for nula',
        () async {
      when(_dataSource.getBrasilianPackages()).thenAnswer((_) async => null);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorBrasilianPackages>());
    });
  });
}
