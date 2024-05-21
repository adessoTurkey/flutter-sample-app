
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract final class AppConstants{
  static const String passwordObscureCharacter= '*';
  static const int textShrinkExpandAnimationDuration= 300;
  static const int textShrinkMaxLine= 2;
  static String registerUrl = "https://www.themoviedb.org/signup";
  static String forgotPasswordUrl = "https://www.themoviedb.org/reset-password";
  static double cameraInitialZoom =12;
  static double outerMarkerSize=30;
  static double innerMarkerSize=20;
  static double mapGoButtonSize=30;
  static const LatLng initialCameraPosition=  LatLng(41.04497678214395, 29.00287763464729);
}