import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:todo_app/app/resources/app_strings.dart';
import 'package:todo_app/app/resources/app_theme.dart';
import 'package:todo_app/app/constants/svg_icons.dart';
import 'package:todo_app/features/home/presentation/widgets/add_task_fields.dart';

class AddTask extends StatelessWidget {

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).extension<AppTheme>()!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 30.h),
      child: Column(
        children: [
          Text(AppStrings.addTask, style: styles.lato20w600,),
          SizedBox(height: 15.h,),
          AddTaskFields(controller: titleController, hintText: AppStrings.title),
          SizedBox(height: 15.h,),
          AddTaskFields(controller: descriptionController, hintText: AppStrings.description),
          SizedBox(height: 25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 136.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgIcons.timer)),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgIcons.categoryTag)),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgIcons.priorityFlag))
                  ],
                  
                ),
              ),
              IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgIcons.sendTask))

            ],
          )
          
        ],
      ),
      );
  }
}