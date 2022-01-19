import 'package:flutter/material.dart';

import 'favourite_button.dart';

class RecentList extends StatelessWidget {
  const RecentList({Key? key}) : super(key: key);
  Card createItem(String doc, String title, double size, Color colour,
      BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: const Color.fromRGBO(245, 246, 252, 1),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(children: [
                    const Icon(
                      Icons.file_copy,
                      size: 15,
                      color: Colors.grey,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: colour,
                          radius: 3,
                        ),
                      ),
                    )
                  ]),
                  const Spacer(),
                  Container(
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        doc,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 8),
                      ),
                    ),
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
                    size.toString() + " Mb",
                    style: const TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  const Spacer(),
                  const FavouriteButton(20)
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
        'doc': 'PSD',
        'size': 43.8,
        'color': Colors.red
      },
      {
        'title': 'Manual Guidelines',
        'doc': 'DOCX',
        'size': 6.2,
        'color': Color.fromRGBO(255, 189, 0, 1)
      },
      {
        'title': 'Design Portfolio',
        'doc': 'AI',
        'size': 127.32,
        'color': Color.fromRGBO(255, 189, 0, 1)
      },
      {
        'title': 'Event Timeline',
        'doc': 'PPT',
        'size': 20.25,
        'color': Color.fromRGBO(255, 189, 0, 1)
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            itemBuilder: (ctx, index) => SizedBox(
                  width: 200,
                  child: createItem(
                    _items[index]['doc'],
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
