import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/custom_appbar.dart';
import '../components/custom_text.dart';
import '../core/colors.dart';
import '../models/product_model.dart';
import 'checkout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppbar(isBlackk: true),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Image.asset("assets/product/backgraond.png"),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Gap(120),
                      Container(
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 216, 162),
                        ),
                        child: Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 255, 216, 162),
                          ),
                          child: Image.asset(
                            "assets/cover/cover1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Gap(20),

                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ProductModel.products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 15,
                          childAspectRatio: 0.50,
                        ),
                        itemBuilder: (context, index) {
                          final item = ProductModel.products[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => Checkout(
                                  image: item.image,
                                  name: item.name,
                                  price: item.price,
                                  descp: item.description,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(item.image),
                                Gap(10),
                                CustomText(text: item.name),
                                CustomText(
                                  text: item.description,
                                  color: Colors.grey,
                                ),
                                Gap(9),
                                CustomText(
                                  text: "\$ ${item.price.toString()}",
                                  color: Colors.red.shade200,
                                  size: 20,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Gap(5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
