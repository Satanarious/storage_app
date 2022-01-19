import 'package:flutter/material.dart';

class StarredScreen extends StatelessWidget {
  const StarredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/no_file.png',
            width: 250,
          ),
          Text(
            "Its Empty Here!",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
