import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';
import 'provider.dart';
import 'user.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Profile1 profile = ProfileProvider.getProfile();
  double _size = 15;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/img.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.45,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                },
                icon: Icon(FontAwesomeIcons.bars)),
            actions: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.cog,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: Stack(
            children: [
              CustomPaint(
                painter: ProfilePainter(),
                child: Container(),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * .23,
                child: CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: ExactAssetImage("images/yassine.png"),
                ),
              ),
              _bodyText(context),
              _bottomBar(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bottomBar(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 24,
      right: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'FOLLOWERS',
                style: TextStyle(
                  fontSize: _size,
                ),
              ),
              Text(profile.followers.toString()),
            ],
          ),
          Column(
            children: [

              Text(
                'FOLLOWING',
                style: TextStyle(
                  fontSize: _size,
                ),
              ),
              Text(profile.following.toString()),
            ],
          ),
          Column(
            children: [
              Text(
                'FRIENDS',
                style: TextStyle(
                  fontSize: _size,
                ),
              ),
              Text(profile.friends.toString()),
            ],
          )
        ],
      ),
    );
  }

  Widget _bodyText(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.35,
      bottom: 0,
      left: 24,
      right: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            profile.user.name,
            style: TextStyle(
              fontFamily: 'Myfont1',
              color: Color(0xFF4dafda),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.3,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xFF015597),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                profile.user.address,
                style: TextStyle(
                  fontFamily: 'Myfont3',
                  color: Color(0xFF015597),
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'About me',
            style: TextStyle(
                fontFamily: 'Myfont4',
                fontSize: 18,
                color: Color(0xFF015597),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              profile.user.about,
              softWrap: true,
              style: TextStyle(
                fontFamily: 'Myfont4',
                fontSize: 17,
                height: 1.4,

              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = Color(0xFFeffbf9);
    path.lineTo(0, size.height * 0.32);
    path.lineTo(size.width, size.height * 0.37);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.25);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
