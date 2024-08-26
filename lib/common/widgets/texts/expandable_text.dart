
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key, required this.text});
  final String text;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText =  true;
  double textHeight  = HHelperFunctions.screenHeight() / 5.63;


  @override
  void initState() {
    if(widget.text.length > textHeight)
      {
        firstHalf = widget.text.substring(0,textHeight.toInt());
        secondHalf = widget.text.substring(textHeight.toInt() +1, widget.text.length);
      }
    else{
      firstHalf = widget.text;
      secondHalf = '';
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? Text(firstHalf) : Column(
        children: [
          Text(hiddenText ? (firstHalf+"...") :(firstHalf+secondHalf),style: Theme.of(context).textTheme.labelSmall,),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                Text(hiddenText ?"Read more" : 'Read less',style: Theme.of(context).textTheme.labelLarge,),
                Icon(hiddenText ?Icons.arrow_drop_down :Icons.arrow_drop_up,color: HColors.primary,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
