import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_videos_channel_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_videos_channel_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_last_videos_channel_repository.dart';
import 'package:mockito/mockito.dart';

class GetLastVideosChannelDataSourceMock extends Mock
    implements IGetLastVideosChannelDataSource {}

main() {
  final IGetLastVideosChannelDataSource _dataSource =
      new GetLastVideosChannelDataSourceMock();
  final IGetLastVideosChannelRepository repository =
      new GetLastVideosChannelRepository(_dataSource);
  final dataMock = new LastVideosChannelEntity();

  group('GetLastMeetupsRepository Test:', () {
    test('deve retornar lista dos ultimos videos', () async {
      when(_dataSource.getLastVideosChannel())
          .thenAnswer((_) async => [dataMock]);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Right>());
      expect(result | null, isA<List<LastVideosChannelEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorGetLastVideosChannel se a lista dos ultimos videos for nula',
        () async {
      when(_dataSource.getLastVideosChannel()).thenAnswer((_) async => null);
      final resultFuture = repository();
      expect(resultFuture, completes);
      final result = await repository();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorGetLastVideosChannel>());
    });
  });
}
