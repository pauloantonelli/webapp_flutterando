import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';

abstract class IGetParceirosDataSource {
  Future<List<ParceirosEntity>> getParceiros();
}
