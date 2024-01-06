import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_palette_generator/utils/utils.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final colorSchemeValues = getColorSchemeValues(colorScheme);

    inspect(colorSchemeValues);

    final hexValue = Theme.of(context)
        .colorScheme
        .primary
        .value
        .toRadixString(16)
        .toUpperCase()
        .substring(2);

    /*
      background:
      Color (Color(0xfffffbff))
      brightness:
      Brightness (Brightness.light)
      error:
      Color (Color(0xffba1a1a))
      onBackground:
      Color (Color(0xff1d1b1e))
      onError:
      Color (Color(0xffffffff))
      onPrimary:
      Color (Color(0xffffffff))
      onSecondary:
      Color (Color(0xffffffff))
    */

    return Container(
      padding: const EdgeInsets.all(16),
      height: 170,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FractionallySizedBox(
            widthFactor: 0.5,
            child: Expanded(
              flex: 1,
              child: Text(
                'Primary',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '#$hexValue',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
