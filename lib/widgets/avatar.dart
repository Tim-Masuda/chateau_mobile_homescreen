import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.url,
    required this.radius,
  }) : super(key: key);

  const Avatar.small({
    Key? key,
    required this.url,
  })  : radius = 16,
        super(key: key);

  const Avatar.medium({
    Key? key,
    required this.url,
  })  : radius = 20,
        super(key: key);

  const Avatar.large({
    Key? key,
    required this.url,
  })  : radius = 30,
        super(key: key);

  final double radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.sp,
      backgroundImage: CachedNetworkImageProvider(url),
      backgroundColor: Theme.of(context).cardColor,
    );
  }
}