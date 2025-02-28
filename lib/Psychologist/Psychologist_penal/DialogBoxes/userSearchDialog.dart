import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Fonts/helveticaFont.dart';
Future<void>UserSearchDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return PopScope(
        canPop: false,
        child: AlertDialog(
          content: Container(
            height: 200.h,
            width: 350,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xff8ADCFF),
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      hintStyle: TextStyle(
                        fontFamily: "Helvetica",
                          fontSize: 17.0, // Set the desired font size
                          fontWeight:
                          FontWeight.normal // Set the desired font weight
                      ),
                      border: InputBorder.none,
                    ),

                  ),
                ),
                const SizedBox(height: 20,),
                const Helvetica(
                  text:'Enter users name to search',
                  alignment: TextAlign.center,
                  weight: FontWeight.w400,
                    color: Color(0xff606060),
                    size: 20,

                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 116,
                  height: 43,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xff8ADCFF), // Text color
                      elevation: 5, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Helvetica(
                      text:'Search',

                        weight: FontWeight.w500,
                        size: 20,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}




































