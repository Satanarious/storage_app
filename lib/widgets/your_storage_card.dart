import 'package:flutter/material.dart';

class YourStrorageCard extends StatelessWidget {
  const YourStrorageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 0,
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Your Storage",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                      Text(
                        "You have used 56% of your total storage",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  const Spacer(),
                  PopupMenuButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      itemBuilder: (ctx) => [
                            "Upgrade Storage",
                            "Manage Storage"
                          ]
                              .map((item) => PopupMenuItem(child: Text(item)))
                              .toList())
                ],
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: const [
                      Text(
                        "56 GB of 100 GB Used",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Spacer(),
                      Text("56%",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      value: 0.56,
                      minHeight: 8,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
