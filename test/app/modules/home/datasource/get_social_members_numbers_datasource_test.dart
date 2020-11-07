import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/datasource/mock/get_social_members_numbers_datasource.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_social_members_numbers_datasource.dart';

main() {
  final ISocialMembersNumbersDataSource usecase =
      new SocialMembersNumbersDataSource();

  group('SocialMembersNumbersDataSource Test', () {
    test('deve retornar a lista de seguidores das redes sociais sem erros',
        () async {
      final result = await usecase.getSocialMembersDataSource();
      expect(result, isA<List<SocialMembersNumbersEntity>>());
    });
  });
}
