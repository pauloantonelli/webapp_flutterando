import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/send_brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/send_brasilian_packages.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class SendBrasilianPackagesRepositoryMock extends Mock
    implements ISendBrasilianPackagesRepository {}

main() {
  final ISendBrasilianPackagesRepository _repository =
      new SendBrasilianPackagesRepositoryMock();
  final ISendBrasilianPackages usecase = new SendBrasilianPackages(_repository);
  final mockData = new BrasilianPackagesEntity();

  group('SendBrasilianPackages Test:', () {
    test('deve retornar um booleando apos a submissao do package', () async {
      when(_repository(mockData)).thenAnswer((_) async => Right(true));
      final resultFuture = usecase.sendPackage(mockData);
      expect(resultFuture, completes);
      final result = await usecase.sendPackage(mockData);
      expect(result, isA<Right>());
      expect(result | null, isA<bool>());
    });

    test(
        'deve retornar o erro NullErrorSendBrasilianPackages se model for nulo',
        () async {
      when(_repository(mockData)).thenAnswer((_) async => Right(false));
      final resultFuture = usecase.sendPackage(null);
      expect(resultFuture, completes);
      final result = await usecase.sendPackage(null);
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullErrorSendBrasilianPackages>());
    });
  });
}
