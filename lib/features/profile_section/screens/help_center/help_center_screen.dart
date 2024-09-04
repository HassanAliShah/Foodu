import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/help_center_controller.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/contect_option_widget.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/faqWidget.dart';
import 'package:get/get.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpCenterController());
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Help Center'),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: TabBar(
                isScrollable: true,
                tabs: controller.tabs.map((tabName) {
                  return Tab(text: tabName);
                }).toList(),
              ),
            ),
          ),
          body: TabBarView(children: [
            //Faq
            FaqWidget(controller: controller),
            const ContactOptionsWidget(),
          ])



        ));
  }
}

