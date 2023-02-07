import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/custom_app_bar.dart';
import 'package:trading_app/Graph_body.dart';
import 'package:trading_app/Bottom_app_part.dart';
import 'package:trading_app/Portfolio.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar:CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).backgroundColor,
              height: 100,
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('asset/polygon.webp') ,
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('₹94.634',style: Theme.of(context).textTheme.headline1,),
                          Text('MATIC',style:TextStyle(color:Colors.blueAccent.shade700,fontSize: 16),),
                        ],
                      ),
              ]
            ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/about');
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.black,
                            )
                          ),
                          child: Center(child: Text('Discuss >>',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black),)),
                        ),
                      )

                ],
              )
            ),
            Graphbody(),
            Bottompart(),
            Portfolio(),
          ],
        ),

      ),
    );
  }
}
