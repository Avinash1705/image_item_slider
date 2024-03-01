library image_item_slider;
export 'src/imageAnimationBanner.dart';

import 'package:flutter/material.dart';
import 'package:image_item_slider/src/dimensions.dart';


class ImageAnimationBanner extends StatefulWidget {
  const ImageAnimationBanner({super.key});

  @override
  State<ImageAnimationBanner> createState() => _ImageAnimationBannerState();
}

class _ImageAnimationBannerState extends State<ImageAnimationBanner> {
  var _currentPageValue = 0.0;
  double scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {

    var images = ["https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1640770/pexels-photo-1640770.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"];

    return Scaffold(

      body: Container(
        // color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: images.isEmpty
                  ? 1
                  : images.length,
              itemBuilder: (context, position) {
                return _buildPageItem(position,
                    images[position] );
              })),
    );
  }

  Widget _buildPageItem(int position, image) {
    Matrix4 matrix4 = Matrix4.identity();
    if (position == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - position) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (position == _currentPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (_currentPageValue - position) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - scaleFactor), 1);
    }

    return Transform(
      transform: matrix4,
      child: Stack(children: [
        GestureDetector(
          //index pass
          // onTap: () => Get.toNamed(RoutesHelper.getPopularFood(position,"home")),
          //Define your route
          child: Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: Color(0xFF69c5df),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    // image: AssetImage("images/apple.jpg"))),
                    image: NetworkImage(image))),
          ),
        ),
        Align(
          child: Container(
            height: Dimensions.pageViewContainer,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30,
                top: Dimensions.height140),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(
                      color: Colors.white,
                      // blurRadius: 5.0,
                      offset: Offset(5, 0)),
                  BoxShadow(
                      color: Colors.white,
                      // blurRadius: 5.0,
                      offset: Offset(5, 0)),
                ]),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
                margin: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                child: Center(child: Text( position.toString(),textScaleFactor: 7,))),
          ),
        ),
      ]),
    );
  }
}
