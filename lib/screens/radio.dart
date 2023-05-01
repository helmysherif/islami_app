import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_icon.png"),
        const Text("إذاعة القرآن الكريم",
            style: TextStyle(color: Colors.black)),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {},
              child: Icon(
                Icons.skip_previous,
                size: 55,
                color: Theme.of(context).primaryColor,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {},
              child: Icon(
                Icons.play_arrow_rounded,
                size: 65,
                color: Theme.of(context).primaryColor,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {},
              child: Icon(
                Icons.skip_next,
                size: 55,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
