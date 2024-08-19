
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/image_text_category_container.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return SizedBox(
      height: HHelperFunctions.screenHeight() /5.3,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: controller.categoryName.length,
        itemBuilder: (context, index) {
          return ImageTextCategoryContainer(
            image: controller.categoryImage[index],
            text: controller.categoryName[index],
            onTap: () {

            },
          );
        },
      ),
    );
  }
}