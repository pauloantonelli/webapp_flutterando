import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/send_brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/send_brasilian_packages_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/send_brasilian_packages_repository.dart';
import 'package:mockito/mockito.dart';

class SendBrasilianPackagesDataSourceMock extends Mock
    implements ISendBrasilianPackagesDataSource {}

main() {
  final ISendBrasilianPackagesDataSource _dataSource =
      new SendBrasilianPackagesDataSourceMock();
  final ISendBrasilianPackagesRepository repository =
      new SendBrasilianPackagesRepository(_dataSource);
  final dataMock = new BrasilianPackagesEntity();

  group('SendBrasilianPackagesRepository Test:', () {
    test('deve retornar um boolean sem erro do datasource', () async {
      when(_dataSource.sendPackage(dataMock)).thenAnswer((_) async => true);
      final resultFuture = repository(dataMock);
      expect(resultFuture, completes);
      final result = await repository(dataMock);
      expect(result, isA<Right>());
      expect(result | null, isA<bool>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorSendBrasilianPackages se o retorno for nulo',
        () async {
      when(_dataSource.sendPackage(dataMock)).thenAnswer((_) async => null);
      final resultFuture = repository(dataMock);
      expect(resultFuture, completes);
      final result = await repository(dataMock);
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorSendBrasilianPackages>());
    });
  });
}
