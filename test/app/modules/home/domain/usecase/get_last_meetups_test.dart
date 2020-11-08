import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_meetups_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_last_meetups.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class GetLastMeetupsRepositoryMock extends Mock
    implements IGetLastMeetupsRepository {}

main() {
  final IGetLastMeetupsRepository _repository =
      new GetLastMeetupsRepositoryMock();
  final IGetLastMeetups usecase = new GetLastMeetups(_repository);
  final mockData = new LastMeetUpsEntity();
  group('GetLastMeetups Test', () {
    test('deve retornar lista de meetups', () async {
      when(_repository()).thenAnswer((_) async => Right([mockData]));
      final resultFuture = usecase.getLastMeetups();
      expect(resultFuture, completes);
      final result = await usecase.getLastMeetups();
      expect(result, isA<Right>());
      expect(result | null, isA<List<LastMeetUpsEntity>>());
    });

    test(
        'deve retornar o erro ErrorGetLastMeetups se a lista de meetups for nula',
        () async {
      when(_repository()).thenAnswer((_) async => null);
      final resultFuture = usecase.getLastMeetups();
      expect(resultFuture, completes);
      final result = await usecase.getLastMeetups();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r), isA<NullErrorGetLastMeetups>());
    });
  });
}
