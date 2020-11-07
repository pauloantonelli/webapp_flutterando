import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_social_members_numbers_repository.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_social_members_numbers.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

class SocialMembersNumbersRepositoryMock extends Mock
    implements ISocialMembersNumbersRepository {}

main() {
  final ISocialMembersNumbersRepository _repository =
      new SocialMembersNumbersRepositoryMock();
  final SocialMembersNumbers usecase = new SocialMembersNumbers(_repository);
  final socialMembersNumbersEntityMock = new SocialMembersNumbersEntity();
  group('SocialMembersNumbers Test', () {
    test('deve retornar lista numeros seguidores das redes sociais', () async {
      when(_repository.getSocialMembers())
          .thenAnswer((_) async => Right([socialMembersNumbersEntityMock]));
      final resultFuture = usecase.getSocialMembersNumbers();
      expect(resultFuture, completes);
      final result = await usecase.getSocialMembersNumbers();
      expect(result, isA<Right>());
      expect(result | null, isA<List<SocialMembersNumbersEntity>>());
    });

    test(
        'deve retornar o erro NullErrorSocialMembersNumbers se a lista de numeros seguidores das redes sociais for nula',
        () async {
      when(_repository.getSocialMembers()).thenAnswer((_) async => null);
      final resultFuture = usecase.getSocialMembersNumbers();
      expect(resultFuture, completes);
      final result = await usecase.getSocialMembersNumbers();
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r),
          isA<NullErrorSocialMembersNumbers>());
    });
  });
}
