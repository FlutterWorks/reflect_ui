library open_colors;

import 'package:flutter/material.dart' show MaterialColor;
import 'package:flutter/painting.dart';

abstract final class OpenColors {
  /// Completely invisible.
  static const Color transparent = Color(0x00000000);

  /// Completely opaque black.
  static const Color black = Color(0xFF000000);

  /// Completely opaque white.
  static const Color white = Color(0xFFFFFFFF);

  /// The gray primary color and swatch.
  static const MaterialColor gray = MaterialColor(
    _grayPrimaryValue,
    <int, Color>{
      50: Color(0xFFF8F9FA),
      100: Color(0xFFF1F3F5),
      200: Color(0xFFE9ECEF),
      300: Color(0xFFDEE2E6),
      400: Color(0xFFCED4DA),
      500: Color(_grayPrimaryValue),
      600: Color(0xFF868E96),
      700: Color(0xFF495057),
      800: Color(0xFF343A40),
      900: Color(0xFF212529),
    },
  );
  static const int _grayPrimaryValue = 0xFFADB5BD;

  /// The red primary color and swatch.
  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF5F5),
      100: Color(0xFFFFE3E3),
      200: Color(0xFFFFC9C9),
      300: Color(0xFFFFA8A8),
      400: Color(0xFFFF8787),
      500: Color(_redPrimaryValue),
      600: Color(0xFFFA5252),
      700: Color(0xFFF03E3E),
      800: Color(0xFFE03131),
      900: Color(0xFFC92A2A),
    },
  );
  static const int _redPrimaryValue = 0xFFFF6B6B;

  /// The pink primary color and swatch.
  static const MaterialColor pink = MaterialColor(
    _pinkPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF0F6),
      100: Color(0xFFFFDEEB),
      200: Color(0xFFFCC2D7),
      300: Color(0xFFFAA2C1),
      400: Color(0xFFF783AC),
      500: Color(_pinkPrimaryValue),
      600: Color(0xFFE64980),
      700: Color(0xFFD6336C),
      800: Color(0xFFC2255C),
      900: Color(0xFFA61E4D),
    },
  );
  static const int _pinkPrimaryValue = 0xFFF06595;

  /// The grape primary color and swatch.
  static const MaterialColor grape = MaterialColor(
    _grapePrimaryValue,
    <int, Color>{
      50: Color(0xFFF8F0FC),
      100: Color(0xFFF3D9FA),
      200: Color(0xFFEEBEFA),
      300: Color(0xFFE599F7),
      400: Color(0xFFDA77F2),
      500: Color(_grapePrimaryValue),
      600: Color(0xFFBE4BDB),
      700: Color(0xFFAE3EC9),
      800: Color(0xFF9C36B5),
      900: Color(0xFF862E9C),
    },
  );
  static const int _grapePrimaryValue = 0xFFCC5DE8;

  /// The violet primary color and swatch.
  static const MaterialColor violet = MaterialColor(
    _violetPrimaryValue,
    <int, Color>{
      50: Color(0xFFF3F0FF),
      100: Color(0xFFE5DBFF),
      200: Color(0xFFD0BFFF),
      300: Color(0xFFB197FC),
      400: Color(0xFF9775FA),
      500: Color(_violetPrimaryValue),
      600: Color(0xFF7950F2),
      700: Color(0xFF7048E8),
      800: Color(0xFF6741D9),
      900: Color(0xFF5F3DC4),
    },
  );
  static const int _violetPrimaryValue = 0xFF845EF7;

  /// The indigo primary color and swatch.
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      50: Color(0xFFEDF2FF),
      100: Color(0xFFDBE4FF),
      200: Color(0xFFBAC8FF),
      300: Color(0xFF91A7FF),
      400: Color(0xFF748FFC),
      500: Color(_indigoPrimaryValue),
      600: Color(0xFF4C6EF5),
      700: Color(0xFF4263EB),
      800: Color(0xFF3B5BDB),
      900: Color(0xFF364FC7),
    },
  );
  static const int _indigoPrimaryValue = 0xFF5C7CFA;

  /// The blue primary color and swatch.
  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE7F5FF),
      100: Color(0xFFD0EBFF),
      200: Color(0xFFA5D8FF),
      300: Color(0xFF74C0FC),
      400: Color(0xFF4DABF7),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF228BE6),
      700: Color(0xFF1C7ED6),
      800: Color(0xFF1971C2),
      900: Color(0xFF1864AB),
    },
  );
  static const int _bluePrimaryValue = 0xFF339AF0;

  /// The cyan primary color and swatch.
  static const MaterialColor cyan = MaterialColor(
    _cyanPrimaryValue,
    <int, Color>{
      50: Color(0xFFE3FAFC),
      100: Color(0xFFC5F6FA),
      200: Color(0xFF99E9F2),
      300: Color(0xFF66D9E8),
      400: Color(0xFF3BC9DB),
      500: Color(_cyanPrimaryValue),
      600: Color(0xFF15AABF),
      700: Color(0xFF1098AD),
      800: Color(0xFF0C8599),
      900: Color(0xFF0B7285),
    },
  );
  static const int _cyanPrimaryValue = 0xFF22B8CF;

  /// The teal primary color and swatch.
  static const MaterialColor teal = MaterialColor(
    _tealPrimaryValue,
    <int, Color>{
      50: Color(0xFFE6FCF5),
      100: Color(0xFFC3FAE8),
      200: Color(0xFF96F2D7),
      300: Color(0xFF63E6BE),
      400: Color(0xFF38D9A9),
      500: Color(_tealPrimaryValue),
      600: Color(0xFF12B886),
      700: Color(0xFF0CA678),
      800: Color(0xFF099268),
      900: Color(0xFF087F5B),
    },
  );
  static const int _tealPrimaryValue = 0xFF20C997;

  /// The green primary color and swatch.
  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFEBFBEE),
      100: Color(0xFFD3F9D8),
      200: Color(0xFFB2F2BB),
      300: Color(0xFF8CE99A),
      400: Color(0xFF69DB7C),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF40C057),
      700: Color(0xFF37B24D),
      800: Color(0xFF2F9E44),
      900: Color(0xFF2B8A3E),
    },
  );
  static const int _greenPrimaryValue = 0xFF51CF66;

  /// The lime primary color and swatch.
  static const MaterialColor lime = MaterialColor(
    _limePrimaryValue,
    <int, Color>{
      50: Color(0xFFF4FCE3),
      100: Color(0xFFE9FAC8),
      200: Color(0xFFD8F5A2),
      300: Color(0xFFC0EB75),
      400: Color(0xFFA9E34B),
      500: Color(_limePrimaryValue),
      600: Color(0xFF82C91E),
      700: Color(0xFF74B816),
      800: Color(0xFF66A80F),
      900: Color(0xFF5C940D),
    },
  );
  static const int _limePrimaryValue = 0xFF94D82D;

  /// The yellow primary color and swatch.
  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF9DB),
      100: Color(0xFFFFF3BF),
      200: Color(0xFFFFEC99),
      300: Color(0xFFFFE066),
      400: Color(0xFFFFD43B),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFFAB005),
      700: Color(0xFFF59F00),
      800: Color(0xFFF08C00),
      900: Color(0xFFE67700),
    },
  );
  static const int _yellowPrimaryValue = 0xFFFCC419;

  /// The orange primary color and swatch.
  static const MaterialColor orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF4E6),
      100: Color(0xFFFFE8CC),
      200: Color(0xFFFFD8A8),
      300: Color(0xFFFFC078),
      400: Color(0xFFFFA94D),
      500: Color(_orangePrimaryValue),
      600: Color(0xFFFD7E14),
      700: Color(0xFFF76707),
      800: Color(0xFFE8590C),
      900: Color(0xFFD9480F),
    },
  );
  static const int _orangePrimaryValue = 0xFFFF922B;
}
