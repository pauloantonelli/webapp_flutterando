import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
      this.imageAssetSrc =
          'https://flutterando.com.br/wp-content/uploads/2019/06/flutterando_logo.png'});
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
      child: Image.network(
        imageAssetSrc,
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
