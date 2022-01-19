import 'package:flutter/material.dart';

import 'favourite_button.dart';

class FolderList extends StatelessWidget {
  const FolderList({Key? key}) : super(key: key);

  Card createItem(String count, String title, double size, Color colour,
      BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: const Color.fromRGBO(245, 246, 252, 1),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/folder.png',
                    width: 35,
                  ),
                  const Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 6,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: colour),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const FavouriteButton(12),
                    ],
                  )
                ],
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    count.toString() + " Files",
                    style: const TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    size.toString() + " Mb",
                    style: const TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> _items = [
      {
        'title': 'Simple Logo Card Mockup',
        'file_count': '72',
        'size': 43.8,
        'color': Color.fromRGBO(255, 189, 0, 1)
      },
      {
        'title': 'Manual Guidelines',
        'file_count': '16',
        'size': 6.2,
        'color': Colors.red
      },
      {
        'title': 'Design Portfolio',
        'file_count': '82',
        'size': 127.32,
        'color': Colors.red
      },
      {
        'title': 'Event Timeline',
        'file_count': '5',
        'size': 20.25,
        'color': Colors.red
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 140,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            itemBuilder: (ctx, index) => SizedBox(
                  width: 150,
                  child: createItem(
                    _items[index]['file_count'],
                    _items[index]['title'],
                    _items[index]['size'],
                    _items[index]['color'],
                    context,
                  ),
                )),
      ),
    );
  }
}
