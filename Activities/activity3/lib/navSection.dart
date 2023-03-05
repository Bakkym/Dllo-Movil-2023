import 'package:flutter/material.dart';

class NavSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return navSection;
  }
}

Widget navSection = Container(
  padding: EdgeInsets.only(bottom: 30),
    child: Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://cdn-icons-png.flaticon.com/512/12/12426.png',
          height: 200,
          width: 200,
          color: Colors.white,
        )
      ],
    ),
    const Spacer(),
    Column(
      children: const [
        Icon(
          Icons.search,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          width: 100,
        )
      ],
    ),
    Column(
      children: const [
        Icon(
          Icons.more_vert,
          size: 40,
          color: Colors.white,
        )
      ],
    )
  ],
));
