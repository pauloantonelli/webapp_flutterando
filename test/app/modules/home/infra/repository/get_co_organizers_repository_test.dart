import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_co_organizers_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_co_organizers_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_co_organizers_repository.dart';
import 'package:mockito/mockito.dart';

class GetCoOrganizersDataSourceMock extends Mock
    implements IGetCoOrganizersDataSource {}

main() {
  final IGetCoOrganizersDataSource _dataSource =
      new GetCoOrganizersDataSourceMock();
  final IGetCoOrganizersRepository repository =
      new GetCoOrganizersRepository(_dataSource);
  final dataMock = new CoOrganizerEntity();

  group('GetCoOrganizersRepository Test:', () {
    test('deve retornar lista dos ultimos videos', () async {
      when(_dataSource.getCoOrganizers()).thenAnswer((_) async => [dataMock]);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Right>());
      expect(result | null, isA<List<CoOrganizerEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorCoOrganizer se a lista dos ultimos videos for nula',
        () async {
      when(_dataSource.getCoOrganizers()).thenAnswer((_) async => null);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorCoOrganizer>());
    });
  });
}
