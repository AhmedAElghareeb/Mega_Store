import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/app_input.dart';
import 'package:mega_store/core/design/styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "First Name",
      "Last Name",
    ];

    List<TextEditingController> controller = [
      TextEditingController(),
      TextEditingController(),
    ];

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 361.h,
            padding: EdgeInsetsDirectional.only(
                start: 16.w, end: 16.w, top: 29.h, bottom: 24.h),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsetsDirectional.only(bottom: 24.h),
                    itemBuilder: (context, idx) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[idx],
                          style: Styles.textStyle14W700.copyWith(
                              color: const Color(
                                0xff223263,
                              ),
                              height: 2.1),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        AppInput(
                          controller: controller[idx],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This Field is Required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    itemCount: title.length,
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
                AppButton(
                  text: "Save",
                  onPress: () {},
                  bgColor: const Color(0xffBA6400),
                ),
              ],
            ),
          ),
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 36.r,
            child: CachedNetworkImage(
              imageUrl:
              "https://avatars.mds.yandex.net/get-images-cbir/3253639/dzf3YFjXhirip4NGsOawVQ4178/ocr",
              width: 72.w,
              height: 72.h,
              placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dominic Ovo",
                style: Styles.textStyle14W700
                    .copyWith(color: const Color(0xff223263), height: 2.1),
              ),
              Text(
                "@dominic_ovo",
                style: Styles.textStyle12W400.copyWith(height: 2.1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}