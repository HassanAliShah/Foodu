import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_text_field.dart';
import 'package:foodu/common/widgets/texts/expandable_text.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/add_item_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AddItemToBasket extends StatelessWidget {
   const AddItemToBasket({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = AddItemController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:
              [
                Container(
                  width: double.infinity,
                  height: THelperFunctions.screenHeight() /3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(HImages.restaurent),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(top:20,right: 0,left: 0, child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        Get.back();
                      }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.share,color: Colors.white,)),
                          ],
                        ),
                      )
                    ],
                  ),)
                )
              ],
            ),
            Padding(padding: HSpacingStyles.paddingWithHeightWidth,child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                      child: Text(
                        'Big Gardan Salad',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const custom_divider(),
                  const ExpandableText(text: "This vegetable salad is a healthy and delicious summer salad made with fresh raw veggies, avocado, nuts, seeds, herbs and feta in a light"),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CounterButton(onTap: () => controller.itemCount++,iconData: Icons.add,),
                      Obx(()=> Text("${controller.itemCount}",style: Theme.of(context).textTheme.titleLarge,)),
                      CounterButton(onTap: ()=> controller.itemCount--,iconData: Icons.remove,)
                    ],
                  ),
                  CustomTextField(height: THelperFunctions.screenHeight() /5,
                      maxline: 4,
                      hintText: 'Note To Restaurant (Optional)',
                      textEditingController: controller.textEditingController),
                  const custom_divider(),
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Add to Basket - 12\$")))
                ],
              ),)

          ],
        ),
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key, required this.onTap, required this.iconData,
  });

  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 58,
        height: 58,
        padding: const EdgeInsets.all(17),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: TColors.borderGrey),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Icon(iconData,color: TColors.primary,),
        )
      ),
    );
  }
}
