![Alt Text]()

<img src="https://github.com/Avinash1705/image_item_slider/assets/34656820/17538bea-4084-4970-af59-de351290bcdf" width="150" height="280">

## auto scroll slider Package

The Auto Scroll Slider package for Flutter provides a convenient solution for creating
auto-scrolling image lists with an animated interface, enhancing user experience and visual appeal.

## Installing

Add dependency to ```pubspec.yaml```
To use the latest version of `auto_scroll_slider`, add the following line to your `pubspec.yaml`
file:

```yaml
dependencies:
  image_item_slider:
```

Install it
You can install packages from the command line:
with ```Flutter```:

```shell    
$ flutter pub get
```

Import the package

```dart
import 'package:image_item_slider/mine_package.dart';
```


## Example

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

## License

This package is released under
the [ License]().

## Additional Information

👍 We're thrilled that our solution is adding value and positively impacting your project! ✨ Your
support means the world to us. 🌟 If you're loving the results, show your appreciation with a thumbs
up! 💫 We're committed to excellence and continuously strive to exceed your expectations. Thank you
for choosing us! 🚀

**Avinash Rawat**
