import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';

abstract class IGetBrasilianCasesDataSource {
  Future<List<BrasilianCasesEntity>> getBrasilianCases();
}
