import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/datasource/mock/get_last_meetups_datasource.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_meetups_datasource.dart';

main() {
  final IGetLastMeetupsDataSource dataSource = new GetLastMeetupsDataSource();

  group('GetLastMeetupsDataSource Test', () {
    test('deve retornar a lista dos ultimos meetups', () async {
      final result = await dataSource.getLastMeetups();
      expect(result, isA<List<LastMeetUpsEntity>>());
    });
  });
}
