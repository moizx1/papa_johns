import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:papa_johns/constants/app_constants.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: AppColors.red,
        leading: Icon(
          Icons.menu,
          size: 28,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              Icons.shopping_cart,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Deals',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    // padding: EdgeInsets.all(),
                    height: 10.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 50.w,
                          height: 11.h,
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          textAlign: TextAlign.left,
                          'Lit Box',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          '1920',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: AppColors.red,
        backgroundColor: Color.fromARGB(220, 255, 255, 255),
        buttonBackgroundColor: AppColors.red,
        items: <Widget>[
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            child: ImageIcon(
              AssetImage(AppImages.home1),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            child: ImageIcon(
              AssetImage(AppImages.home2),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            child: ImageIcon(
              AssetImage(AppImages.home3),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.white,
            ),
            child: ImageIcon(
              AssetImage(AppImages.home4),
            ),
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
