import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 150,
      margin: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:  EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Portfolio Exposure',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.amber),),
                  Text('₹14,69,073',style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('INVESTED',style: Theme.of(context).textTheme.bodyText2),
                  Text('QUANTITY',style: Theme.of(context).textTheme.bodyText2),
                  Text('BROKER',style: Theme.of(context).textTheme.bodyText2),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('₹6480',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14)),
                  SizedBox(width: 5,),
                  Text('0.5',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14)),
                  Row(
                    children: [
                      Text('Etherium chain ',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14)),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                        backgroundImage: AssetImage('asset/etherium.jpeg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('₹89870',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14)),
                  SizedBox(width: 5,),
                  Text('1',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14)),
                  Row(
                    children: [
                      Text('Etherium chain ',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14)),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                        backgroundImage: AssetImage('asset/etherium.jpeg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
