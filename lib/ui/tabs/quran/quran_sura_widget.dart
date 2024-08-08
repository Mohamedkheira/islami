import 'package:flutter/material.dart';
import 'package:islami/ui/sura_content/sura_content_screen.dart';

class QuranSuraWidget extends StatelessWidget {
  String suraNames;
  int versesNumber;
  int index;

  QuranSuraWidget(
      {super.key,
      required this.suraNames,
      required this.versesNumber,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraContentScreen.routeName, arguments: SuraContentArgs(suraNames: suraNames, index: index));
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(
              suraNames,
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
            )),
            Container(
              color: Theme.of(context).colorScheme.primary,
              width: 3,
            ),
            Expanded(
              child: Text(
                versesNumber.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
