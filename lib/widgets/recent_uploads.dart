import 'package:flutter/material.dart';

class RecentUploads extends StatelessWidget {
  const RecentUploads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) => Card(
                color: const Color.fromRGBO(245, 246, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.image,
                        color: Theme.of(context).primaryColor,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Draft Preview",
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        ".JPG",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "2.5 Mb",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      PopupMenuButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Theme.of(context).primaryColor,
                        ),
                        itemBuilder: (ctx) => ['Pin', 'Remove from List']
                            .map(
                              (e) => PopupMenuItem(
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
