import 'package:flutter/material.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/shared/image-network/image_network_widget.dart';

class LogoParceirosWidget extends StatefulWidget {
  final ParceirosEntity model;

  const LogoParceirosWidget({Key key, this.model}) : super(key: key);
  @override
  _LogoParceirosWidgetState createState() => _LogoParceirosWidgetState();
}

class _LogoParceirosWidgetState extends State<LogoParceirosWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ImageNetworkWidget(srcImage: widget.model.srcImage),
    );
  }
}
