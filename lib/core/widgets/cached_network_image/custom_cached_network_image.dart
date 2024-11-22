import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.imageUrl,
    super.key,
    this.height = 120,
    this.width = 80,
  });

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fadeInDuration: Duration.zero,
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => Icon(
        Icons.image_not_supported_outlined,
        size: 60.sp,
      ),
      height: height.h,
      width: width.w,
    );
  }
}
