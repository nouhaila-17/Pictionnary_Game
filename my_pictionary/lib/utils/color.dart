import 'package:flutter/material.dart';

// gadient color of the background !!
const bgGradientColor = LinearGradient(
  begin: Alignment(0.0, 0.0),
  end: Alignment(0.0, 1.0), // Update end property to have vertical alignment
  stops: [
    0.0,
    0.3,
    1.0
  ], // Update stops property to have valid values (0.0 to 1.0)
  colors: [
    Color.fromRGBO(162, 243, 238, 0.22),
    Color.fromRGBO(179, 183, 251, 0.54),
    Color(0xFFAEA2F3),
  ],
);

// AppBackground our widget color for the whole app
class AppBackgroundColor extends StatelessWidget {
  const AppBackgroundColor({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: bgGradientColor,
      ),
      child: child,
    );
  }
}

// class of a bunch of colors
class ColorConstant {
  static Color indigo10089 = fromHex('#89b2b7fa');

  static Color whiteA7002b = fromHex('#2bffffff');

  static Color green100 = fromHex('#c1e1c1');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color indigo500F4 = fromHex('#f43f45d8');

  static Color gray200 = fromHex('#efefef');

  static Color gray300 = fromHex('#e5e4e4');

  static Color gray30001 = fromHex('#dbdbdb');

  static Color gray50 = fromHex('#fcfcfc');

  static Color deepPurple200 = fromHex('#ada2f3');

  static Color tealA400 = fromHex('#24e0c9');

  static Color indigo300 = fromHex('#7674ec');

  static Color cyan300 = fromHex('#63dfe7');

  static Color blueGray1006b = fromHex('#6bd9d9d9');

  static Color indigo100 = fromHex('#cfd1f8');

  static Color yellow600 = fromHex('#ebe427');

  static Color indigo200 = fromHex('#9997dd');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color tealA10038 = fromHex('#38a2f3ee');

  static Color whiteA700 = fromHex('#ffffff');

  static Color green10001 = fromHex('#c2e1c1');

  static Color fromHex(String s) {
    final buffer = StringBuffer();

    const hexString = null;
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
