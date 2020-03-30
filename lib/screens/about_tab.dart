import '../config/assets.dart';
import '../config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.network(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Aditya Sharma',
                textScaleFactor: 4,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "GoogleSansRegular",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Android | Flutter | Badminton | Music.\nLike Traveling',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "GoogleSansRegular",
                ),
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    color: Colors.white,
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.network(Assets.github),
                    ),
                    label: Text(
                      'Github',
                      style: TextStyle(
                        fontFamily: "GoogleSansRegular",
                      ),
                    ),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'aditya_sharma'),
                  ),
                  SizedBox(width: 10),
                  FlatButton.icon(
                    color: Colors.white,
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.network(Assets.instagram),
                    ),
                    label: Text(
                      'Instagram',
                      style: TextStyle(
                        fontFamily: "GoogleSansRegular",
                      ),
                    ),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'aditya_sharma'),
                  ),
                  SizedBox(width: 10),
                  FlatButton.icon(
                    color: Colors.white,
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.network(Assets.facebook),
                    ),
                    label: Text(
                      'Facebook',
                      style: TextStyle(
                        fontFamily: "GoogleSansRegular",
                      ),
                    ),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'aditya_sharma'),
                  ),
                  SizedBox(width: 10),
                  FlatButton.icon(
                    color: Colors.white,
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.network(Assets.linkedin),
                    ),
                    label: Text(
                      'Linkedin',
                      style: TextStyle(
                        fontFamily: "GoogleSansRegular",
                      ),
                    ),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'aditya_sharma'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
