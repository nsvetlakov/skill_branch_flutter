import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const String kFlutterDash1 =
    'https://cdn.pixabay.com/photo/2020/06/07/13/33/fireworks-5270439_960_720.jpg';

class FullScreenImage extends StatefulWidget {
  FullScreenImage({Key key, this.altDescription, this.userName, this.name})
      : super(key: key);

  final String altDescription;
  final String userName;
  final String name;

  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  String altDescription = 'Какой-то текст';
  String userName = '@nsvetlakov';
  String name = 'Nikita Svetlakov';

  @override
  void initState() {
    super.initState();
    userName = widget.userName;
    altDescription = widget.altDescription;
    name = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(
            CupertinoIcons.back,
            color: AppColors.grayChateau,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Photo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Photo(
            photoLink: kFlutterDash1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              altDescription.toString(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.h3.copyWith(color: AppColors.manatee),
            ),
          ),
          _buildPhotoMeta(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(10, true),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.dodgerBlue,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child:
                            Text('Save', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.dodgerBlue,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Text('Visit',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
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
              UserAvatar(
                  'https://st3.depositphotos.com/3557671/12516/v/950/depositphotos_125169086-stock-illustration-man-with-beard-icon-cartoon.jpg'),
              SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name.toString(),
                    style: AppStyles.h2Black,
                  ),
                  Text(
                    '@' + userName.toString(),
                    style: AppStyles.h5Black.copyWith(color: AppColors.manatee),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
