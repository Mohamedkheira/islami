import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  double angle = 0;

  List<String> tasbeh = ['سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 35,

                  ),
                  child: Image.asset("assets/images/head of seb7a.png"),
                ),
                GestureDetector(
                  onTap: () {
                    counterMethod();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 39),
                    child: Transform.rotate(
                      angle: angle,

                        child: Image.asset("assets/images/body of seb7a.png")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 41,
            ),
            Text(
              AppLocalizations.of(context)!.number_of_permits,
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Text(
                count.toString(),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 16, vertical: 9),
              decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Text(
                tasbeh[index],
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  counterMethod() {
    setState(() {
      angle += 10;
      if (count == 33) {
        count = 0;
        if (index < tasbeh.length - 1) {
          index++;
        } else {
          index = 0;
        }
      }
      else {
        count++;
      }
    });
  }
}
