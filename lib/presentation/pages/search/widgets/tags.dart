import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  int tag = 1;
  List<String> tags = [];
  List<String> options = [
    '#loremipsum',
    'lorem1',
    'ipsum2',
    '#loremip',
    'lorem3,',
    '#im4',
    '#loremipsumss',
    'lorem5',
    'ipsum6',
    'lorem4,',
    '#im5',
    '#loremiumss',
    'lore5',
    'ipsum7',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppPaddings.all10,
        child: Column(
          children: [
            ChipsChoice<String>.multiple(
              value: tags,
              onChanged: (val) => setState(() => tags = val),
              choiceItems: C2Choice.listFrom(
                source: options,
                value: (i, v) => v,
                label: (i, v) => v,
              ),
              alignment: WrapAlignment.center,
              wrapped: true,
              choiceStyle: const C2ChipStyle(
                height: 35,
                  foregroundColor: AppColors.etherealWhite,
                  backgroundColor: AppColors.greyScaleGrey_1,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderColor: AppColors.karimunBlue,
                  borderStyle: BorderStyle.solid),
            )
          ],
        ),
      ),
    );
  }
}
