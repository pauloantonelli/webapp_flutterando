import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

import 'image_network_controller.dart';

class ImageNetworkWidget extends StatefulWidget {
  final double width;
  final double height;
  final String srcImage;
  final BoxFit fitStyle;
  final Color color;
  final BlendMode colorBlendMode;
  const ImageNetworkWidget({
    Key key,
    @required this.srcImage,
    this.width,
    this.height,
    this.fitStyle = BoxFit.fill,
    this.color,
    this.colorBlendMode = BlendMode.clear,
  }) : super(key: key);
  @override
  _ImageNetworkWidgetState createState() => _ImageNetworkWidgetState();
}

class _ImageNetworkWidgetState
    extends ModularState<ImageNetworkWidget, ImageNetworkController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Image.network(
        widget.srcImage,
        fit: widget.fitStyle,
        color: widget.color,
        colorBlendMode: widget.colorBlendMode,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
            child:
                Lottie.asset('assets/lottie/loading-inifinity-animation.zip'),
          );
        },
      ),
    );
  }
}
