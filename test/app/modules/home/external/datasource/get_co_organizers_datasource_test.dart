import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/get_co_organizers_datasource.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_co_organizers_datasource.dart';

main() {
  final IGetCoOrganizersDataSource dataSource = new GetCoOrganizersDataSource();

  group('GetCoOrganizersDataSource Test', () {
    test('deve retornar a lista dos co organizadores', () async {
      final result = await dataSource.getCoOrganizers();
      expect(result, isA<List<CoOrganizerEntity>>());
    });
  });
}
