import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/upload.png',
            width: 350,
          ),
          Text(
            "Drop Your Files Here!",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icons.image,
              Icons.music_note,
              Icons.file_present,
              Icons.video_camera_back,
            ]
                .map(
                  (icon) => Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 0,
                              blurRadius: 10),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    child: IconButton(
                      splashRadius: 5,
                      icon: Icon(
                        icon,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
