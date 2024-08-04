import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/assets_paths.dart';

class SaveBottomSheet extends StatelessWidget {
  const SaveBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Container(
            height: 6,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          20.verticalSpace,
          SizedBox(
            height: 300, 
            child: ListView.builder(
              itemCount: 10, 
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding:
                      const EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  title: Text("Playlist $index"),
                  leading: SizedBox(
                      height: 24, width: 24, child: Image.asset(AssetsPaths.cover)),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey[800],
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16,
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
