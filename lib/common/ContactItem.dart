import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItem extends StatelessWidget {
  ContactItem({super.key});

  final List<MyContacts> myContacts = [
    MyContacts("Linkedin", "https://www.linkedin.com/in/kesavaraman-m-r-43a38b167/", 'assets/images/linkedin.png'),
    MyContacts("Gmail", "mailto:technowkesav@gmail.com", 'assets/images/gmail.png'),
    MyContacts("Github", "https://github.com/Kesav-21", 'assets/images/github.png'),
    MyContacts("HackerRank", "https://www.hackerrank.com/cgkesav", 'assets/images/hackerrank.png'),
    MyContacts("Instagram", "https://www.instagram.com/kesav_techie/", 'assets/images/instagram.png'),
    MyContacts("Twitter", "https://twitter.com/Kesavaraman_M_R/", 'assets/images/twitter.png'),
    MyContacts("Gcloud", "https://www.cloudskillsboost.google/public_profiles/ed4f1d07-0b19-4364-9065-9b289cab7d58", 'assets/images/gcloud.png'),
    MyContacts("GDevelopers", "https://developers.google.com/profile/u/113000277420584948589", 'assets/images/google-developers.png'),
    MyContacts("Youtube", "https://www.youtube.com/channel/UCoH5UWnGH4QSCfQWm9FRWkw", 'assets/images/youtube.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      padding: const EdgeInsets.all(20),
      children: [
        for (var contact in myContacts)
        InkWell(
          onTap: ()=> launchUrl(Uri.parse(contact.link),mode: LaunchMode.externalApplication),
          child: Card(
            child: Column(
            children: [
              Image.asset(contact.image,scale: 7.0,),
              Text(contact.cname),
              ],
          ),
          ),
        )
      ],
    );
  }
}

class MyContacts {
  final String cname;
  final String link;
  final String image;

  MyContacts(this.cname, this.link, this.image);
}
