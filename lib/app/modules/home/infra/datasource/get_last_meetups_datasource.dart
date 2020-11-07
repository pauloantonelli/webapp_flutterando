import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';

abstract class IGetLastMeetupsDataSource {
  Future<List<LastMeetUpsEntity>> getLastMeetups();
}
