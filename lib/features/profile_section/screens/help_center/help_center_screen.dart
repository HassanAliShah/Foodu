import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/profile_section/controller/help_center_controller.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/category_selector.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/contect_option_widget.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/faqWidget.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/faq_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpCenterController());
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Help Center'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
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
            ContactOptionsWidget(),
          ])



        ));
  }
}

