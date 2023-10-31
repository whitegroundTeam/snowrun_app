import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:snowrun_app/app_style.dart';

class CommonNetworkImage extends StatefulWidget {
  final double? width;
  final double? height;
  final String imageUrl;
  final Color? imageBackgroundColor;
  final BoxFit? boxFit;

  const CommonNetworkImage(
      {super.key,
      this.width,
      this.height,
      required this.imageUrl,
      this.imageBackgroundColor,
      this.boxFit});

  @override
  State createState() => CommonNetworkImageState();
}

class CommonNetworkImageState extends State<CommonNetworkImage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: widget.imageBackgroundColor ?? Colors.transparent,
      child: !widget.imageUrl.startsWith("http")
          ? SizedBox(
              width: widget.width,
              height: widget.height,
              child: Image.asset(
                'assets/webp/snow_ball_white.webp',
                width: widget.width,
                height: widget.height,
                fit: BoxFit.cover,
              ),
            )
          : CachedNetworkImage(
            width: widget.width,
            height: widget.height,
            errorWidget: (context, url, error) {
              return SizedBox(
                width: widget.width,
                height: widget.height,
                child: Image.asset(
                  'assets/webp/snow_ball_white.webp',
                  fit: BoxFit.cover,
                )
              );
            },
            fit: widget.boxFit ?? BoxFit.cover,
            imageUrl: widget.imageUrl,
          ),
    );
  }
}
