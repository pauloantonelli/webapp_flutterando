import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/send_brasilian_packages_datasource.dart';
import 'package:flutterando/app/modules/home/infra/datasource/send_brasilian_packages_datasource.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {}

main() {
  Dio dioMock = new Dio();
  final ISendBrasilianPackagesDataSource datasource =
      new SendBrasilianPackagesDataSource(dioMock);
  final BrasilianPackagesEntity modelMock = new BrasilianPackagesEntity(
      packageName: 'Modular',
      developerName: 'Jacob Moura',
      externalLink: 'https://pub.dev/packages/flutter_modular');
  // const jsonMock = {'id': 12, 'status': 'success'};

  group('SendBrasilianPackagesDataSource Test:', () {
    test('deve retornar dados da apifake', () async {
      final Dio dio = new Dio();
      final SendBrasilianPackagesDataSource datasource =
          new SendBrasilianPackagesDataSource(dio);
      final resultFuture = datasource.fakeApi(
          nomepackage: modelMock.packageName,
          nomeAuthor: modelMock.developerName,
          linkPackage: modelMock.externalLink);
      final result = await datasource.fakeApi(
          nomepackage: modelMock.packageName,
          nomeAuthor: modelMock.developerName,
          linkPackage: modelMock.externalLink);

      expect(resultFuture, completes);
      expect(result, isA<Map<String, dynamic>>());
    });
  });

  test('deve retornar um booleano da api', () async {
    // when(dioMock.post(any))
    //     .thenAnswer((_) async => Response(data: jsonMock, statusCode: 200));
    final resultFuture = datasource.sendPackage(modelMock);
    final result = await datasource.sendPackage(modelMock);
    expect(resultFuture, completes);
    expect(result, isA<bool>());
    expect(result, true);
  });

  // test(
  //     'deve retornar o erro DataSourceErrorSendBrasilianPackages caso de erro na requisicao',
  //     () async {
  //   when(dioMock.post('https://reqres.in/api'))
  //       .thenAnswer((_) async => Response(data: 'error', statusCode: 400));
  //   final result = await datasource.sendPackage(modelMock);
  //   expect(result, throwsException);
  // });
}
