import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/features/profile_section/screens/language/widget/language_item.dart';
import 'package:get/get.dart';

class LanguageSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  controller = ProfileController.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
      ),
      body: ListView(
        children: [
          ListTile(
            title:Text(
              'Suggested',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          LanguageItem(language: 'English (US)'),
          LanguageItem(language: 'English (UK)'),
          ListTile(
            title: Text('Language',style:  Theme.of(context).textTheme.bodyLarge,),
          ),
          LanguageItem(language: 'Mandarin'),
          LanguageItem(language: 'Hindi'),
          LanguageItem(language: 'Spanish'),
          LanguageItem(language: 'French'),
          LanguageItem(language: 'Arabic'),
          LanguageItem(language: 'Bengali'),
          LanguageItem(language: 'Russian'),
          LanguageItem(language: 'Indonesia'),
        ],
      ),
    );
  }
}
