import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Theme.of(context).backgroundColor,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children:[
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,)),

            Text('Polygon',style: Theme.of(context).textTheme.headline1,)

            ],
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade900,
              child: Center(
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0);
}
