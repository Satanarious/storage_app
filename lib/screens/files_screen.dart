import 'package:flutter/material.dart';
import 'package:storage_app/widgets/drive_list.dart';
import 'package:storage_app/widgets/recent_uploads.dart';

class FilesScreen extends StatelessWidget {
  const FilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        SizedBox(height: mediaQuery.padding.top),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All Files",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.2),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/images/profile_picture.png'),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: mediaQuery.size.width - 90,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Something',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "My Drive",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
              const Spacer(),
              PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).primaryColor,
                ),
                itemBuilder: (ctx) =>
                    ['Add Image', 'Add Document', 'Add Music', 'Add Video']
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
        const DriveList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Recently Uploaded",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
              const Spacer(),
              Text(
                "Filter",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              PopupMenuButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Theme.of(context).primaryColor,
                ),
                itemBuilder: (ctx) => ['Today', 'Month', 'Year']
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
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: RecentUploads(),
        )),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
