import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';

abstract class IGetCoOrganizersDataSource {
  Future<List<CoOrganizerEntity>> getCoOrganizers();
}
