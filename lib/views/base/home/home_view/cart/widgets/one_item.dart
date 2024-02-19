import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.images,
    required this.body,
    required this.price,
    required this.index,
  });

  final List<String> images;
  final List<String> body;
  final List<String> price;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 110.h,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.r,
        ),
        border: Border.all(
          color: const Color(0xffEBF0FF),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: images[index],
            width: 68.w,
            height: 72.h,
            fit: BoxFit.fill,
            placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          SizedBox(
            width: 17.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    body[index],
                    style: Styles.textStyle12W400.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.8,
                      color: const Color(0xff223263),
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Color(0xffFB7181),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  const Icon(
                    Icons.delete_outline_rounded,
                    color: Color(0xff9098B1),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price[index],
                    style: Styles.textStyle12W400.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.8,
                      color: const Color(0xff40BFFF),
                    ),
                  ),
                  SizedBox(
                    width: 70.h,
                  ),
                  Container(
                    width: 110.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r,),
                        border: Border.all(
                            color: const Color(0xffEBF0FF)
                        ),
                        color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.remove, size: 16.r,),
                        Container(
                          width: 40.w,
                          height: 30.h,
                          color: const Color(0xffEBF0FF),
                          child: const Center(child: Text("1",)),
                        ),
                        Icon(Icons.add, size: 16.r,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}