import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_meetups_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_meetups_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_last_meetups_repository.dart';
import 'package:mockito/mockito.dart';

class GetLastMeetupsDataSourceMock extends Mock
    implements IGetLastMeetupsDataSource {}

main() {
  final IGetLastMeetupsDataSource _dataSource =
      new GetLastMeetupsDataSourceMock();
  final IGetLastMeetupsRepository repository =
      new GetLastMeetupsRepository(_dataSource);
  final dataMock = new LastMeetUpsEntity();

  group('GetLastMeetupsRepository Test:', () {
    test('deve retornar lista dos ultimos meetups', () async {
      when(_dataSource.getLastMeetups()).thenAnswer((_) async => [dataMock]);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Right>());
      expect(result | null, isA<List<LastMeetUpsEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorGetLastMeetups se a lista dos ultimos meetups for nula',
        () async {
      when(_dataSource.getLastMeetups()).thenAnswer((_) async => null);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorGetLastMeetups>());
    });
  });
}
