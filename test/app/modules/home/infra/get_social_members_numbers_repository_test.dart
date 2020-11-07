import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_social_members_numbers_datasource.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_social_members_numbers_repository.dart';
import 'package:mockito/mockito.dart';

class SocialMembersNumbersDataSourceMock extends Mock
    implements ISocialMembersNumbersDataSource {}

main() {
  final ISocialMembersNumbersDataSource _dataSource =
      new SocialMembersNumbersDataSourceMock();
  final SocialMembersNumbersRepository usecase =
      new SocialMembersNumbersRepository(_dataSource);
  final socialMembersNumbersEntityMock = new SocialMembersNumbersEntity();

  group('SocialMembersNumbersRepository Test:', () {
    test('deve retornar lista numeros seguidores das redes sociais', () async {
      when(_dataSource.getSocialMembersDataSource())
          .thenAnswer((_) async => [socialMembersNumbersEntityMock]);
      final resultFuture = usecase.getSocialMembers();
      expect(resultFuture, completes);
      final result = await usecase.getSocialMembers();
      expect(result, isA<Right>());
      expect(result | null, isA<List<SocialMembersNumbersEntity>>());
    });

    test(
        'deve retornar o erro NullDataSourceErrorSocialMembersNumbers se a lista de numeros seguidores das redes sociais for nula',
        () async {
      when(_dataSource.getSocialMembersDataSource())
          .thenAnswer((_) async => null);
      final resultFuture = usecase.getSocialMembers();
      expect(resultFuture, completes);
      final result = await usecase.getSocialMembers();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullDataSourceErrorSocialMembersNumbers>());
    });
  });
}
