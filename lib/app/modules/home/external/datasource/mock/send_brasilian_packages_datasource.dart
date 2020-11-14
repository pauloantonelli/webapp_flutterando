import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/infra/datasource/send_brasilian_packages_datasource.dart';

part 'send_brasilian_packages_datasource.g.dart';

@Injectable()
class SendBrasilianPackagesDataSource
    implements ISendBrasilianPackagesDataSource {
  final Dio dio;
  BaseOptions options =
      new BaseOptions(baseUrl: 'https://reqres.in/api', connectTimeout: 3000);

  SendBrasilianPackagesDataSource(this.dio) {
    dio.options = this.options;
  }

  @override
  Future<bool> sendPackage(BrasilianPackagesEntity model) async {
    try {
      final result = await this.fakeApi(
          nomepackage: model.packageName,
          nomeAuthor: model.developerName,
          linkPackage: model.externalLink);
      if (result.isNotEmpty && result.containsValue('success')) {
        return true;
      }
      return false;
    } catch (error) {
      throw DataSourceErrorSendBrasilianPackages();
    }
  }

  Future<Map<String, dynamic>> fakeApi(
      {String nomepackage, String nomeAuthor, String linkPackage}) async {
    const jsonMock = {'id': 12, 'status': 'success'};
    final response = await dio.post('/packages', data: {
      'name': nomepackage,
      'author': nomeAuthor,
      'link': linkPackage
    }).then((value) => jsonMock);
    return response;
  }
}
