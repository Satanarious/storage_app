import 'package:flutter/material.dart';

class UpgradeCard extends StatelessWidget {
  const UpgradeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 38,
            left: 20,
            right: 20,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      "Need More Storage?",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Let's See Premium Plans",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 12),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("See All Plans"),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Image.asset('assets/images/cloud_upgrade.png')
            ],
          ),
        ),
      ),
    );
  }
}
