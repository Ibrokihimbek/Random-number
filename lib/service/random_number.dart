import 'dart:math';

String next({
  required int min,
  required int max,
}) =>
    (min + Random().nextInt((max + 1) - min)).toString();