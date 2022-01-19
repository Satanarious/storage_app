import 'package:flutter/material.dart';
import 'package:storage_app/widgets/folder_list.dart';
import 'package:storage_app/widgets/home_carousel.dart';
import 'package:storage_app/widgets/recent_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: mediaQuery.padding.top),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.size.width / 2,
                      child: Text(
                        "Satyam Singh Niranjan",
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
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
          const HomeCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Recently Open",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const Spacer(),
                const Text(
                  "Today 04:23",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const RecentList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "6 Folders",
                  style: TextStyle(color: Colors.grey),
                ),
                const Spacer(),
              ],
            ),
          ),
          const FolderList(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
