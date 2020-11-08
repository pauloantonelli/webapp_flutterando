import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_co_organizers_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_co_organizers.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class GetCoOrganizersRepositoryMock extends Mock
    implements IGetCoOrganizersRepository {}

main() {
  final IGetCoOrganizersRepository _repository =
      new GetCoOrganizersRepositoryMock();
  final IGetCoOrganizers usecase = new GetCoOrganizers(_repository);
  final mockData = new CoOrganizerEntity();
  group('GetCoOrganizers Test', () {
    test('deve retornar lista de organizadores', () async {
      when(_repository()).thenAnswer((_) async => Right([mockData]));
      final resultFuture = usecase.getCoOrganizers();
      expect(resultFuture, completes);
      final result = await usecase.getCoOrganizers();
      expect(result, isA<Right>());
      expect(result | null, isA<List<CoOrganizerEntity>>());
    });

    test(
        'deve retornar o erro NullErrorCoOrganizer se a lista de organizadores for nula',
        () async {
      when(_repository()).thenAnswer((_) async => null);
      final resultFuture = usecase.getCoOrganizers();
      expect(resultFuture, completes);
      final result = await usecase.getCoOrganizers();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r), isA<NullErrorCoOrganizer>());
    });
  });
}
