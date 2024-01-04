import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/image/default_profile.png'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Giovanni D\'amico',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 2.0),
                Text(
                  'Mobile Developer',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20.0),

                buildSectionTitle('Competenze Specifiche'),
                const SizedBox(height: 12.0),
                buildSkillChips(['Kotlin', 'Flutter', 'GitHub', 'SQL', 'Android Studio', 'Java', 'XML']),
                const SizedBox(height: 20.0),

                buildSectionTitle('Contatti'),
                const SizedBox(height: 12.0),
                buildContactInfo('assets/icons/phone.svg', '+39 327 569 4161'),
                buildContactInfo('assets/icons/linkedin.svg', 'linkedin.com/giovannidamicodev'),
                buildContactInfo('assets/icons/email.svg', 'giovannidevelop@gmail.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget buildSkillChips(List<String> skills) {
    return Wrap(
      spacing: 12.0,
      children: skills.map((skill) => buildSkillChip(skill)).toList(),
    );
  }

  Widget buildSkillChip(String skill) {
    return Chip(
      label: Text(
        skill,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.grey,
    );
  }

  Widget buildContactInfo(String iconPath, String value) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      leading: SvgPicture.asset(
        iconPath,
        width: 24.0,
        height: 24.0,
        color: Colors.white,
      ),
      title: Text(
        value,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
