import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/brasilian_cases_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/brasilian_cases.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class GetBrasilianCasesRepositoryMock extends Mock
    implements IGetBrasilianCasesRepository {}

main() {
  final IGetBrasilianCasesRepository _repository =
      new GetBrasilianCasesRepositoryMock();
  final IGetBrasilianCases usecase = new GetBrasilianCases(_repository);
  final mockData = new BrasilianCasesEntity();

  group('GetBrasilianCases Test:', () {
    test('deve retornar lista de cases', () async {
      when(_repository()).thenAnswer((_) async => Right([mockData]));
      final resultFuture = usecase.getBrasilianCases();
      expect(resultFuture, completes);
      final result = await usecase.getBrasilianCases();
      expect(result, isA<Right>());
      expect(result | null, isA<List<BrasilianCasesEntity>>());
    });

    test(
        'deve retornar o erro NullErrorBrasilianPackages se a lista de cases for nula',
        () async {
      when(_repository()).thenAnswer((_) async => null);
      final resultFuture = usecase.getBrasilianCases();
      expect(resultFuture, completes);
      final result = await usecase.getBrasilianCases();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r), isA<NullErrorBrasilianCases>());
    });
  });
}
