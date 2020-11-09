import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_parceiros_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_parceiros.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class GetParceirosRepositoryMock extends Mock
    implements IGetParceirosRepository {}

main() {
  final IGetParceirosRepository _repository = new GetParceirosRepositoryMock();
  final IGetParceiros usecase = new GetParceiros(_repository);
  final mockData = new ParceirosEntity();

  group('GetParceiros Test:', () {
    test('deve retornar lista de parceiros', () async {
      when(_repository()).thenAnswer((_) async => Right([mockData]));
      final resultFuture = usecase.getParceiros();
      expect(resultFuture, completes);
      final result = await usecase.getParceiros();
      expect(result, isA<Right>());
      expect(result | null, isA<List<ParceirosEntity>>());
    });

    test(
        'deve retornar o erro NullErrorParceiros se a lista de parceiros for nula',
        () async {
      when(_repository()).thenAnswer((_) async => null);
      final resultFuture = usecase.getParceiros();
      expect(resultFuture, completes);
      final result = await usecase.getParceiros();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r), isA<NullErrorParceiros>());
    });
  });
}
