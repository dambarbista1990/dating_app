import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'reuseable_icons_container.dart';
import 'constants.dart';
import 'reuseable_svg_icon.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Discover",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 80.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/cat.jpeg'),
            )
          ],
        ),
        Container(
          height: 570.0,
          margin: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
          decoration: BoxDecoration(
              color: Color(0xFFE0C9C9),
              borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    /// Image container height
                    child: Container(
                      height: 450.0,

                      /// This Widget is for, To give corner radio to image.
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage('images/image.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  /// This is for text 'she likes you'
                  Center(
                    child: Container(
                      child: Center(
                        child: Text(
                          'She likes you! 🔥',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: kActiveColor),
                      margin: EdgeInsets.only(top: 20.0),
                      // alignment: Alignment.topCenter,
                      height: 30.0,
                      width: 150.0,
                    ),
                  ),
                  /// This container for name,age and occupation info
                  Container(
                    height: 425.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tamara, 25',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Text(
                            'Software Engineer',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Location info
                  /// This is for distance
                  Container(
                    child: Center(
                      child: Text(
                        '2.5mil',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        color: kActiveColor),
                    height: 30.0,
                    width: 60.0,
                    margin:
                        EdgeInsets.only(top: 390.0, left: 270.0, right: 15.0),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              /// This is for like, dislike and message icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReuseableIconContainer(
                      icon: Icons.close,
                      color: Colors.white,
                      height: 50,
                      width: 50,
                      circularRadius: 30.0),
                  ReuseableIconContainer(
                      icon: Icons.favorite,
                      iconColor: Colors.white,
                      iconSize: 28.0,
                      color: kActiveColor,
                      height: 70.0,
                      width: 70.0,
                      circularRadius: 35.0),
                  ReuseableSVGIcon(
                      height: 50.0,
                      width: 50.0,
                      iconColor: kActiveColor,
                      activeColor: Colors.white,
                      iconsName: 'images/chat.svg',
                      circularRadius: 30.0,
                      padding: 15.0),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60.0,
        ),
        /// these are for tab bar icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReuseableSVGIcon(
                height: 45.0,
                width: 45.0,
                iconColor: Colors.white,
                activeColor: kActiveColor,
                iconsName: 'images/compass.svg',
                circularRadius: 10.0,
                padding: 10.0),
            ReuseableIconContainer(
              icon: Icons.favorite_border_sharp,
              iconSize: 30.0,
              iconColor: kTabBarIconsColor,
            ),
            ReuseableIconContainer(
              icon: Icons.search_rounded,
              iconSize: 30.0,
              iconColor: kTabBarIconsColor,
            ),
            Container(
              child: SvgPicture.asset(
                'images/comment.svg',
                height: 22.0,
                width: 22.0,
                color: kTabBarIconsColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
