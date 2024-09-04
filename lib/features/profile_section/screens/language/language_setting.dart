import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/features/profile_section/screens/language/widget/language_item.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final  controller = ProfileController.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Language', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: ListView(
        children: [
          ListTile(
            title:Text(
              'Suggested',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const LanguageItem(language: 'English (US)'),
          const LanguageItem(language: 'English (UK)'),
          ListTile(
            title: Text('Language',style:  Theme.of(context).textTheme.bodyLarge,),
          ),
          const LanguageItem(language: 'Mandarin'),
          const LanguageItem(language: 'Hindi'),
          const LanguageItem(language: 'Spanish'),
          const LanguageItem(language: 'French'),
          const LanguageItem(language: 'Arabic'),
          const LanguageItem(language: 'Bengali'),
          const LanguageItem(language: 'Russian'),
          const LanguageItem(language: 'Indonesia'),
        ],
      ),
    );
  }
}
