import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/image-network/image_network_widget.dart';
import 'package:flutterando/app/shared/social-icon-button/social_icon_button_controller.dart';

class SocialIconButtonWidget extends StatefulWidget {
  final String link;
  final String imageAssetSrc;
  final double width;
  final double heigth;
  final double padding;
  final double marginRight;
  final double borderRadius;
  final bool cursor;
  SocialIconButtonWidget({
    @required this.imageAssetSrc,
    this.link = '',
    this.width = 40.0,
    this.heigth = 40.0,
    this.padding = 10.0,
    this.marginRight = 5.0,
    this.borderRadius = 10.0,
    this.cursor = false,
  });

  @override
  _SocialIconButtonWidgetState createState() => _SocialIconButtonWidgetState();
}

class _SocialIconButtonWidgetState
    extends ModularState<SocialIconButtonWidget, SocialIconButtonController> {
  @override
  Widget build(BuildContext context) {
    if (widget.cursor == true) {
      return FlatButton(
        onPressed: () {
          if (widget.link.isNotEmpty) {
            controller.launchUrl(url: widget.link);
          }
        },
        child: Container(
            width: this.widget.width,
            height: this.widget.heigth,
            padding: EdgeInsets.all(this.widget.padding),
            margin: EdgeInsets.only(right: this.widget.marginRight),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(this.widget.borderRadius)),
            child: ImageNetworkWidget(
              srcImage: widget.imageAssetSrc,
              width: this.widget.width,
              height: this.widget.heigth,
            )),
      );
    }
    return GestureDetector(
      onTap: () {
        if (widget.link.isNotEmpty) {
          controller.launchUrl(url: widget.link);
        }
      },
      child: Container(
          width: this.widget.width,
          height: this.widget.heigth,
          padding: EdgeInsets.all(this.widget.padding),
          margin: EdgeInsets.only(right: this.widget.marginRight),
          decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(this.widget.borderRadius)),
          child: ImageNetworkWidget(
            srcImage: widget.imageAssetSrc,
            width: this.widget.width,
            height: this.widget.heigth,
          )),
    );
  }
}
