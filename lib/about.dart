import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Theme.of(context).backgroundColor,
      child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Container(
              padding: EdgeInsets.all(20.0),
              height: 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('About MATIC',style:Theme.of(context).textTheme.headline1?.copyWith(color:Theme.of(context).primaryColor,fontSize: 23))
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Padding(padding:EdgeInsets.all(20.0),
                       child: Text('Market Cap',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 19))),
                   Padding(padding:EdgeInsets.all(20.0),
                       child: Text('65,195 Cr.',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal))),
              ],
            ),
            Container(height: 1,color: Colors.grey.shade900,margin: EdgeInsets.only(left: 20.0,right: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('Revenue',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 19))),

                Container(height: 1,color: Colors.grey.shade800,margin: EdgeInsets.only(left: 20.0,right: 20.0),),
                Row(
                  children: [
                    Container(color:Colors.grey.shade900,margin: EdgeInsets.all(10.0),padding:EdgeInsets.all(3.0),child: Center(child: Text('-50.2%',style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15.0,color: Colors.red))),),
                    Padding(padding:EdgeInsets.all(20.0),
                        child: Text('789,112.84 Cr.',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal))),
                  ],
                ),
              ],
            ),
            Container(height: 1,color: Colors.grey.shade900,margin: EdgeInsets.only(left: 20.0,right: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('P/E Ratio',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 19))),
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('30.2',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal))),
              ],
            ),
            Container(height: 1,color: Colors.grey.shade900,margin: EdgeInsets.only(left: 20.0,right: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('Profit',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 19))),

                Row(
                  children: [
                    Container(color:Colors.grey.shade900,margin: EdgeInsets.all(10.0),padding:EdgeInsets.all(3.0),child: Center(child: Text('-50.2%',style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15.0,color: Colors.red))),),
                    Padding(padding:EdgeInsets.all(20.0),
                        child: Text('1098.48 Cr.',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal))),
                  ],
                )
              ],
            ),
            Container(height: 1,color: Colors.grey.shade900,margin: EdgeInsets.only(left: 20.0,right: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('Divident Yield',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 19))),
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('1.92',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal))),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              height: 80,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Technical Indicators',style:Theme.of(context).textTheme.headline1?.copyWith(color:Theme.of(context).primaryColor,fontSize: 23))
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('Cummulative Market Sentiment',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 19))),
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('62.42',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal,color: Colors.cyanAccent))),
              ],
            ),
            Container(padding:EdgeInsets.only(left:20.0,right: 20.0,top:10.0,bottom: 10.0),child: Text('This measure the sentiment of the investor for that particular stock or boin based '
                'on all the news articles, blogs, research papers, financial content featuring it.',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('Relative Strength Index(RSI)',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 19))),
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('37.88',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal,color: Colors.cyanAccent))),
              ],
            ),
            Container(padding:EdgeInsets.only(left:20.0,right: 20.0,top:10.0,bottom: 10.0),child: Text('This measure the price movement of the securities,tell us if the stock or coin is overbought '
                '(above 70)or oversold (below 30)',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('Volatility',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 19))),
                Padding(padding:EdgeInsets.all(20.0),
                    child: Text('0.54',style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.normal,color: Colors.cyanAccent))),
              ],
            ),
            Container(padding:EdgeInsets.only(left:20.0,right: 20.0,top:10.0,bottom: 10.0),child: Text('This measure how much the stock or coin price is moving in any of the directions(upward,downwards'
                'or directional) with respect to time.',style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14),),)
          ],
        ),
      ),
    );
  }
}
