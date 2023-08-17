import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class NameAppbar extends StatelessWidget implements PreferredSizeWidget {
  const NameAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace:  Container(
          
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [context.colorScheme.background, context.colorScheme.onBackground],
          )
        ),
        height: 100,
        padding: EdgeInsets.all(13),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).heyJohn,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33,color: Colors.white),),
                SizedBox(height: 5,),
                Text(S.of(context).welcomeToTheLoyaltyApp,style: TextStyle(color: Colors.white70),)
              ],

            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xC9270F26),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 02,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(10), // Adjust the value for roundness
              ),
              width: 100,




              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star_outlined,color: Colors.yellowAccent,),
                    Text('1562',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],),
              ),
            ),

          ],
        ),
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
