import 'package:FlutterGalleryApp/res/colors.dart';
import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

const String kFlutterDash =
    'https://flutter.dev/assets/404/dash_nest-c64796b59b65042a2b40fae5764c13b7477a592db79eaf04c86298dcb75b78ea.png';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: <Widget>[
              _buildItem(),
              Divider(
                thickness: 2,
                color: AppColors.mercury,
              ),
            ]);
          }),
    );
  }

  Widget _buildItem() {
    return Column(
      children: <Widget>[
        Photo(
          photoLink: kFlutterDash,
        ),
        _buildPhotoMeta(),
      ],
    );
  }

  Widget _buildPhotoMeta() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              UserAvatar('https://skill-branch.ru/img/speakers/Adechenko.jpg'),
              SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Kirill Adeschenko',
                    style: AppStyles.h2Black,
                  ),
                  Text(
                    '@kaparray',
                    style: AppStyles.h5Black.copyWith(color: AppColors.manatee),
                  ),
                ],
              ),
            ],
          ),
          LikeButton(10, true),
        ],
      ),
    );
  }
}
