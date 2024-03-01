
import 'package:flutter/widgets.dart';

class Dimensions {
    // static double screenHeight = Get.context!.height;
    // static double screenWidth = Get.context!.width;

    static double screenHeight = WidgetsBinding.instance.window.physicalSize.height;
    static double screenWidth = WidgetsBinding.instance.window.physicalSize.width;


    // 844/220 = 3.84
    //844/120 = 7.03
    //844/320 = 2.64
    static double pageViewContainer = screenHeight / 3.84;
    static double pageViewTextContainer = screenHeight / 7.03;
    static double pageView = screenHeight / 2.64;

    //330.83/5 = 66.06  width
    static double width5 = screenWidth / 66.06;
    static double width10 = screenWidth / 33.08;
    static double width15 = screenWidth / 22.06;
    static double width20 = screenWidth / 16.515;
    static double width30 = screenWidth / 11.03;
    static double width120 = screenWidth / 2.76;

    static double height10 = screenHeight / 84.4;
    static double height15 = screenHeight / 56.27;
    static double height20 = screenHeight / 42.2;
    static double height30 = screenHeight / 28.13;
    static double height45 = screenHeight / 18.76;
    static double height100 = screenHeight / 8.44;
    static double height120 = screenHeight / 7.03;
    static double height140 = screenHeight / 6.03;

    //popular food - 350
    static double popularFoodImgSize = screenHeight / 2.41;

    //list view size
    static double listViewImgSize = screenWidth / 3.25;
    static double listViewTextContSize = screenWidth / 3.9;

    //se set test height = 667.5  w= 375.83
    //   667.5/120 = 5.56 h       3.13w
    // static double seHeight120 = screenHeight /5.56;
    // static double seHeight100 = screenHeight /6.68;
    // static double seWidth120 = screenWidth /3.13;

    //fonts
    static double fonts20 = screenHeight / 42.2;
    static double fonts16 = screenHeight / 52.75;
    static double fonts26 = screenHeight / 32.46;

    //icons
    static double iconSize16 = screenHeight / 52.75;
    static double iconSize24 = screenHeight / 35.17;

    //radius
    static double radius20 = screenHeight / 42.2;
    static double radius30 = screenHeight / 28.13;

    //splash screen
    static double splashImg = screenWidth / 3.38;
}