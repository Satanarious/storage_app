import 'package:flutter/material.dart';

class DriveList extends StatelessWidget {
  const DriveList({Key? key}) : super(key: key);

  Card createItem(String count, String title, double size, IconData icon,
      Color color, BuildContext context) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: const Color.fromRGBO(245, 246, 252, 1),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: color),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                count.toString() + " Files | " + size.toString() + " Mb",
                style: const TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _items = [
      {
        'title': 'Image',
        'file_count': '72',
        'size': 43.8,
        'icon': Icons.image,
        'color': const Color.fromRGBO(248, 2, 86, 1)
      },
      {
        'title': 'Music',
        'file_count': '16',
        'size': 6.2,
        'icon': Icons.music_note,
        'color': const Color.fromRGBO(255, 189, 0, 1)
      },
      {
        'title': 'Document',
        'file_count': '82',
        'size': 127.32,
        'icon': Icons.file_present_sharp,
        'color': Theme.of(context).primaryColor
      },
      {
        'title': 'Video',
        'file_count': '5',
        'size': 20.25,
        'icon': Icons.video_camera_back,
        'color': const Color.fromRGBO(239, 106, 143, 1)
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 160,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            itemBuilder: (ctx, index) => SizedBox(
                  width: 160,
                  child: SizedBox(
                    width: 150,
                    child: Stack(
                      children: [
                        createItem(
                          _items[index]['file_count'],
                          _items[index]['title'],
                          _items[index]['size'],
                          _items[index]['icon'],
                          _items[index]['color'],
                          context,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
