import 'dart:async';

import 'package:flutter/material.dart';
import 'package:web_try/models/skill_model.dart';

class SkillWidget extends StatelessWidget {
  final Skill skill;
  final double width;

  SkillWidget({
    @required this.skill,
    @required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Container(
        height: height * 0.2,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: width * 0.2,
              child: Image.network(
                skill.image,
                fit: BoxFit.contain,
                width: height * 0.1,
                height: height * 0.1,
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Container(
              width: width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    skill.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSansRegular",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SkillLevel(
                    skill.levelOutOfTen,
                    width * 0.4,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillLevel extends StatefulWidget {
  final int _level;
  final double _width;
  SkillLevel(
    this._level,
    this._width,
  );

  @override
  _SkillLevelState createState() => _SkillLevelState();
}

class _SkillLevelState extends State<SkillLevel> {
  int level = 0;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 100),
      () {
        setState(() {
          level = widget._level;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[300],
      ),
      height: 10,
      width: widget._width,
      child: Stack(
        children: <Widget>[
          AnimatedContainer(
            height: 10,
            width: level * 0.1 * widget._width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
            ),
            duration: Duration(
              milliseconds: 1000,
            ),
          ),
        ],
      ),
    );
  }
}