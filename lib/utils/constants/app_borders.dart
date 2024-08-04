import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBorders {
  const AppBorders._();

  static get all10 {
    return  const BorderRadius.all(Radius.circular(10)).w;
  }

  static get all12 {
    return  BorderRadius.all(Radius.circular(12.sp)).w;
  }

    static get all8 {
    return  BorderRadius.all(Radius.circular(8.sp)).w;
  }


 static get c12 {
    return  BorderRadius.circular(12).w;
        

  }

   static get c360 {
    return  BorderRadius.circular(360).w;
        

  }


   static get c4 {
    return  BorderRadius.circular(4).w;
        

  }

}
