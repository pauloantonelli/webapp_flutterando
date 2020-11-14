import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/get_parceiros_datasource.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_parceiros_datasource.dart';

main() {
  final IGetParceirosDataSource dataSource = new GetParceirosDataSource();

  group('GetParceirosDataSource Test:', () {
    test('deve retornar a lista de parceiros sem erros', () async {
      final result = await dataSource.getParceiros();
      expect(result, isA<List<ParceirosEntity>>());
    });
  });
}
