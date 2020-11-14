import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';

abstract class ISendBrasilianPackagesDataSource {
  Future<bool> sendPackage(BrasilianPackagesEntity model);
}
