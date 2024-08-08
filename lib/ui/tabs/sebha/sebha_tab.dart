import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;

  List<String> tasbeh = ['Sobhan Allah', 'Alhamd llah', 'Allah Akber'];

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
                    start: 60,
                  ),
                  child: Image.asset("assets/images/head_sebha.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset("assets/images/sebha.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 41,
            ),
            Text(
              "Number of permits",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 34,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  number();
                });
              },
              child: Container(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 20, vertical: 24),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadiusDirectional.circular(15),
                ),
                child: Text(
                  count.toString(),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 16, vertical: 9),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: Text(
                'Sobhan Allah',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  reset() {
    count = 0;
  }

  // not complete the logic
  number() {
    setState(() {
      count++;
      if (count == 33) {
        reset();
      }
    });
  }
}
