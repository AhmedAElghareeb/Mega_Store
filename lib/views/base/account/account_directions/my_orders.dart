import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/views/base/account/account_directions/widgets/one_order_item.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          style: Styles.textStyle16W700.copyWith(
            height: 1.5,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18.r,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => const OneOrderItem(),
          itemCount: 2,
        ),
      ),
    );
  }
}