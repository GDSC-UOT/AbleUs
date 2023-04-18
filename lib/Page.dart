import 'package:able_us/CommunityPost.dart';
import 'package:able_us/PageTitle.dart';
import 'package:able_us/ServiceSelector.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  NewPage();
  String title = '';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: [
        PageTitle(''),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Jobs', 'images/Jobs.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Schools', 'images/school.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Courses', 'images/Course.jpg'),
      ],
    ));
  }
}

// Costume Pages Defined

// Opportunities page
class OpportunityPage extends NewPage {
  @override
  // TODO: implement title
  String get title => 'Opportunity';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Jobs', 'images/Jobs.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Schools', 'images/school.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Courses', 'images/Course.jpg'),
      ],
    ));
  }
}

// Profile Page
class ProfilePage extends NewPage {
  @override
  // TODO: implement title
  String get title => 'Profile';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: [
        Placeholder(),
      ],
    ));
  }
}

// Community Page
class CommunityPage extends NewPage {
  @override
  // TODO: implement title
  String get title => 'Community';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 75,
          ),
          ComPost(
              postBody:
                  'So, like the title suggests,I might have fallen in love. it might impossible but it\'s true!. I first meet her in the lobby of the fireWitch center, she was having problems I was able to assist,then she gave me most amazing smile I have ever seen; I still see it every time I close my eye!',
              postTitle: 'Maybe I am in love?',
              userName: 'JamesJasem'),
          const SizedBox(
            height: 25,
          ),
          ComPost(
              postBody:
                  'So, like the title suggests,I might have fallen in love. it might impossible but it\'s true!. I first meet her in the lobby of the fireWitch center, she was having problems I was able to assist,then she gave me most amazing smile I have ever seen; I still see it every time I close my eye!',
              postTitle: 'Maybe I am in love?',
              userName: 'JamesJasem'),
          const SizedBox(
            height: 25,
          ),
          ComPost(
              postBody:
                  'So, like the title suggests,I might have fallen in love. it might impossible but it\'s true!. I first meet her in the lobby of the fireWitch center, she was having problems I was able to assist,then she gave me most amazing smile I have ever seen; I still see it every time I close my eye!',
              postTitle: 'Maybe I am in love?',
              userName: 'JamesJasem'),
        ],
      ),
    );
  }
}

// Supplies Page
class SuppliesPage extends NewPage {
  @override
  // TODO: implement title
  String get title => 'Supplies';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Supplies', 'images/Supplie.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Medicine', 'images/Meds.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Other', 'images/Other.jpg'),
      ],
    ));
  }
}

// Centers Page
class CentersPage extends NewPage {
  @override
  // TODO: implement title
  String get title => 'Care Services';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Care Centers', 'images/carehome.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('In-Home Care', 'images/Inhome.jpg'),
        const SizedBox(
          height: 20,
        ),
        ServiceSelector('Therapy', 'images/Therapy.jpg'),
      ],
    ));
  }
}
