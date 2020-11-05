import 'package:flutter/material.dart';

class SocialIconButtonWidget extends StatelessWidget {
  final double width;
  final double heigth;
  final double padding;
  final String imageAssetSrc;
  final double marginRight;
  final double borderRadius;
  SocialIconButtonWidget(
      {this.width = 40.0,
      this.heigth = 40.0,
      this.padding = 10.0,
      this.marginRight = 5.0,
      this.borderRadius = 10.0,
      this.imageAssetSrc = 'assets/flutterando_logo.png'});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.heigth,
      padding: EdgeInsets.all(this.padding),
      margin: EdgeInsets.only(right: this.marginRight),
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(this.borderRadius)),
      child: Image.asset(imageAssetSrc),
    );
  }
}
