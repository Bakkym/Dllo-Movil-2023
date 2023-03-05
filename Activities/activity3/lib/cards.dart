import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return cards;
  }
}

Widget cards = Row(children: [
  Container(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            width: 180,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: const [
                Text(
                  "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '― Albert Einstein',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            )),
        const SizedBox(height: 8),
        Container(
            padding: const EdgeInsets.all(20),
            width: 180,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: const [
                Text(
                  " “A room without books is like a body without a soul.” ",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '― Marcus Tullius Cicero ',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            )),
        const SizedBox(height: 8),
        Container(
            padding: const EdgeInsets.all(20),
            width: 180,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: const [
                Text(
                  " “If you tell the truth, you don't have to remember anything.” ",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '  ― Mark Twain ',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ],
    ),
  ),
  const Spacer(),
  Container(
    padding: const EdgeInsets.only(right: 15),
    child: Column(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            width: 180,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: const [
                Text(
                  " “You know you're in love when you can't fall asleep because reality is finally better than your dreams.” ",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  ' ― Dr. Seuss ',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            )),
        const SizedBox(height: 8),
        Container(
            padding: const EdgeInsets.all(20),
            width: 180,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: const [
                Text(
                  ' “You only live once, but if you do it right, once is enough.” ',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  ' ― Mae West ',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            )),
        const SizedBox(height: 8),
        Container(
            padding: const EdgeInsets.all(20),
            width: 180,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: const [
                Text(
                  " “In three words I can sum up everything I've learned about life: it goes on.” ",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  ' ― Robert Frost ',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ],
    ),
  )
]);
