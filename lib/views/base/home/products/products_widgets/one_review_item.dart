import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.images,
    required this.names,
    required this.body,
    required this.date,
    required this.index,
  });

  final List<String> images;
  final List<String> names;
  final List<String> body;
  final List<String> date;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              child: CachedNetworkImage(
                imageUrl: images[index],
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              children: [
                Text(
                  names[index],
                  style: Styles.textStyle14W700.copyWith(
                    color: const Color(0xff223263),
                    height: 2.1,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    ...List.generate(
                      4,
                      (index) => const Icon(
                        Icons.star,
                        color: Color(0xffFFC833),
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xffEBF0FF),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          body[index],
          style: Styles.textStyle12W400.copyWith(
            height: 2.1,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          date[index],
          style: Styles.textStyle12W400.copyWith(
            fontSize: 10,
            height: 2.1,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
