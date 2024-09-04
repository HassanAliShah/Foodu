
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/image_text_category_container.dart';
import 'package:foodu/features/home_action_menu/controller/category_controller.dart';
import 'package:foodu/features/home_action_menu/screens/category/selected_category_screen.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = CategoryController.instance;
    return SizedBox(
      height: THelperFunctions.screenHeight(),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: controller.foodCategories.length,
        itemBuilder: (context, index) {
          return ImageTextCategoryContainer(
            image: controller.foodCategories[index].imageUrl,
            text: controller.foodCategories[index].name,
            onTap: () {
              Get.to(const SelectedCategoryScreen());
            },
          );
        },
      ),
    );
  }
}