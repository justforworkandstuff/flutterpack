import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

///Empty image
const AssetImage emptyImage = AssetImage('');

/// constant text style for the multimedia gallery
const TextStyle imageDateTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
const TextStyle imageTimeAndNameTextStyle = TextStyle(fontSize: 16);
const TextStyle audioNameTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
const TextStyle artistNameTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white70);
const TextStyle timestampTextStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);

/// constant loading indicator
Widget loadingIndicator() => const Center(
    child: SizedBox(
        height: 40,
        child: LoadingIndicator(
            indicatorType: Indicator.lineScaleParty,
            backgroundColor: Colors.transparent,
            colors: [lightVibrantBlue],
            pathBackgroundColor: Colors.white38)));

/// gap constant
const SizedBox sizedBoxGapConstantH8 = SizedBox(height: 8);
const SizedBox sizedBoxGapConstantH10 = SizedBox(height: 10);

/// constant padding
const EdgeInsets padding16 = EdgeInsets.all(16);
const EdgeInsets padding10 = EdgeInsets.all(10);
const EdgeInsets padding6 = EdgeInsets.all(6);

/// audio icon button style
const ButtonStyle audioIconStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
    iconColor: MaterialStatePropertyAll<Color>(Colors.black),
    iconSize: MaterialStatePropertyAll(30));

/// constant gradient color
const Color lightVibrantBlue = Color.fromRGBO(197, 231, 255, 1.0);
const Color lightMutedBlue = Color.fromRGBO(88, 130, 159, 1.0);
const Color mainListingBlack = Color.fromARGB(255, 3, 14, 28);
const Color mainListingBlue = Color.fromARGB(255, 36, 52, 74);

/// constant back button
const Icon backButton = Icon(Icons.arrow_back);

/// constant video aspect ratio
const double videoAspectRatio = 16 / 9;

/// constant timestamp style
SliderThemeData timeStampSlider = SliderThemeData(
    overlayShape: SliderComponentShape.noOverlay,
    thumbColor: Colors.white,
    activeTrackColor: Colors.white,
    inactiveTrackColor: Colors.grey.withOpacity(0.6));

const LinearGradient activeIconGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [mainListingBlue, Color.fromARGB(255, 107, 192, 255)]);
