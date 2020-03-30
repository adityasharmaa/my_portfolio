import 'package:flutter/material.dart';
import '../widgets/responsive_widget.dart';
import '../config/skills.dart';
import '../widgets/skill_widget.dart';

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ResponsiveWidget(
      largeScreen: GridView.count(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        crossAxisCount: 4,
        childAspectRatio: width / (height / 1.5),
        children: List.generate(
          skills.length,
          (index) => SkillWidget(
            skill: skills[index],
            width: width / 3,
          ),
        ),
      ),
      smallScreen: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) => SkillWidget(
          skill: skills[index],
          width: width,
        ),
      ),
    );
  }
}