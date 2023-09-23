import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_later/Constant%20file/sub_image_list.dart';
import 'package:pay_later/String%20File/image/shoes.dart';

import '../String File/text_string.dart';
import '../Ui/dashboard_page.dart';

class Popular_product_Container extends StatelessWidget {
  const Popular_product_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: shoes5_0,
            name: dollar22_80,
            description: week4_10Week,
            listcloth: [
              clothModel(assetsImage: shoes5_0),
              clothModel(assetsImage: shoes5_1),
              clothModel(assetsImage: shoes5_2),
            ],
          ),
          Category(
            image_location: shoes2_2,
            name: dollar15_00,
            description: week4_10Week,
            listcloth: [
              clothModel(assetsImage: shoes1_0),
              clothModel(assetsImage: shoes1_1),
              clothModel(assetsImage: shoes1_2),
            ],
          ),
          Category(
            image_location: shoes2_0,
            name: dollar35_90,
            description: week9_20Week,
            listcloth: [
              clothModel(assetsImage: shoes2_0),
              clothModel(assetsImage: shoes2_1),
              clothModel(assetsImage: shoes2_2),
            ],
          ),
          Category(
            image_location: shoes3_0,
            name: dollar15_00,
            description: week5_30Week,
            listcloth: [
              clothModel(assetsImage: shoes3_0),
              clothModel(assetsImage: shoes3_1),
              clothModel(assetsImage: shoes3_2),
            ],
          ),
          Category(
            image_location: shoes4_0,
            name: dollar24_80,
            description: week4_10Week,
            listcloth: [
              clothModel(assetsImage: shoes4_0),
              clothModel(assetsImage: shoes4_1),
              clothModel(assetsImage: shoes4_2),
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? image_location;
  final String? name;
  final String? description;
  List<clothModel> listcloth;

  Category({
    this.image_location,
    this.name,
    this.description,
    required this.listcloth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DashBoardscreen(
                      image_location: image_location,
                      name: name,
                      description: description,
                      listcloth: listcloth,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Container(
              height: 180.h,
              width: 190.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  image_location!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 22.sp),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    description!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 15.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
