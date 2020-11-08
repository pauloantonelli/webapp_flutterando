import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_videos_channel_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_last_videos_channel.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class GetLastVideosChannelRepositoryMock extends Mock
    implements IGetLastVideosChannelRepository {}

main() {
  final IGetLastVideosChannelRepository _repository =
      new GetLastVideosChannelRepositoryMock();
  final IGetLastVideosChannel usecase = new GetLastVideosChannel(_repository);
  final mockData = new LastVideosChannelEntity();
  group('GetLastVideosChannel Test', () {
    test('deve retornar lista dos ultimos videos', () async {
      when(_repository()).thenAnswer((_) async => Right([mockData]));
      final resultFuture = usecase.getLastVideos();
      expect(resultFuture, completes);
      final result = await usecase.getLastVideos();
      expect(result, isA<Right>());
      expect(result | null, isA<List<LastVideosChannelEntity>>());
    });

    test(
        'deve retornar o erro NullErrorGetLastVideosChannel se a lista de videos for nula',
        () async {
      when(_repository()).thenAnswer((_) async => null);
      final resultFuture = usecase.getLastVideos();
      expect(resultFuture, completes);
      final result = await usecase.getLastVideos();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullErrorGetLastVideosChannel>());
    });
  });
}
