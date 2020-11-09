import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/brasilian_packages.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class GetBrasilianPackagesRepositoryMock extends Mock
    implements IGetBrasilianPackagesRepository {}

main() {
  final IGetBrasilianPackagesRepository _repository =
      new GetBrasilianPackagesRepositoryMock();
  final IGetBrasilianPackages usecase = new GetBrasilianPackages(_repository);
  final mockData = new BrasilianPackagesEntity();

  group('GetBrasilianPackages Test', () {
    test('deve retornar lista de packages', () async {
      when(_repository()).thenAnswer((_) async => Right([mockData]));
      final resultFuture = usecase.getBrasilianPackages();
      expect(resultFuture, completes);
      final result = await usecase.getBrasilianPackages();
      expect(result, isA<Right>());
      expect(result | null, isA<List<BrasilianPackagesEntity>>());
    });

    test(
        'deve retornar o erro NullErrorBrasilianPackages se a lista de packages for nula',
        () async {
      when(_repository()).thenAnswer((_) async => null);
      final resultFuture = usecase.getBrasilianPackages();
      expect(resultFuture, completes);
      final result = await usecase.getBrasilianPackages();
      expect(result, isA<Left>());
      expect(
          result.fold((l) => l, (r) => r), isA<NullErrorBrasilianPackages>());
    });
  });
}
