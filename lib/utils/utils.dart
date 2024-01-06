import 'package:flutter/material.dart';
import 'package:flutter_palette_generator/models/color_scheme_reflector.dart';
import 'package:reflectable/reflectable.dart';

Map<String, Color> getColorSchemeValues(ColorScheme colorScheme) {
  const colorSchemeReflector = ColorSchemeReflector();

  final colorMap = <String, Color>{};

  final colorClassMirror = colorSchemeReflector.
  reflect(colorScheme);

  colorClassMirror.type.declarations.forEach((key, value) {
    if (value is VariableMirror && value.type.simpleName == "Color") {
      colorMap[key] = colorClassMirror.invokeGetter(key) as Color;
    }
  });

  return colorMap;
}
