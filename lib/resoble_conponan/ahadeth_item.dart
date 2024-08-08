import 'package:flutter/material.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:islami_app/ui/hadith_screen/hadith_screen.dart';

class AhadethItem extends StatelessWidget {
  HadethModel hadeth;
  AhadethItem({super.key,required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadithScreen.routeName,arguments: hadeth);
      },
      child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
