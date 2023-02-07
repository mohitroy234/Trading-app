import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:trading_app/model/chart_data.dart';
class Graphbody extends StatefulWidget {
  const Graphbody({Key? key}) : super(key: key);

  @override
  State<Graphbody> createState() => _GraphbodyState();
}

class _GraphbodyState extends State<Graphbody> {
  late List<chartData>  data;
  final categoriesList =[
    '1H',
    '1D',
    '1W',
    '1M',
    '5Y',
  ];
  late TrackballBehavior _trackballBehavior;
  int currentSelect=0;
  @override
  void initState() {
    super.initState();
    _trackballBehavior=TrackballBehavior(enable: true,activationMode: ActivationMode.singleTap);
    data=[
      chartData(1,40.0000),
      chartData(2,45.0270),
      chartData(3,50.0000),
      chartData(4,47.0000),
      chartData(5,49.0000),
      chartData(6,46.0270),
      chartData(7,46.5270),
      chartData(8,60.0000),
      chartData(9,50.2340),
      chartData(10,58.5360),
      chartData(11,54.8380),
      chartData(12,55.0270),
      chartData(13,55.7380),
      chartData(14,70.0000),
      chartData(15,65.0270),
      chartData(16,65.0270),
      chartData(17,75.0000),
      chartData(18,79.0030),
      chartData(19,80.0000),
      chartData(20,77.3560),
      chartData(21,82.5430),
      chartData(22,84.7780),
      chartData(23,89.0440),
      chartData(24,92.6340),


    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color:  Colors.grey.shade900,
      child:Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(7.0),
                  color: Colors.black,
                  child: Center(
                    child:Text('↝ 2.79%',style:Theme.of(context).textTheme.bodyText2?.copyWith(color:Colors.greenAccent.shade400)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7.0),
                  color: Colors.grey.shade800,
                  child: Center(
                    child:Text('Ascending angle',style:Theme.of(context).textTheme.bodyText2?.copyWith(color:Colors.deepPurpleAccent)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7.0),
                  color: Colors.grey.shade800,
                  child: Center(
                    child:Text('High exposure',style:Theme.of(context).textTheme.bodyText2?.copyWith(color:Colors.red.shade800,)),
                  ),
                )
              ],
            )
          ),
          Center(
           child: SfCartesianChart(
             trackballBehavior: _trackballBehavior,
             margin: EdgeInsets.all(0),
             borderWidth: 0,
             plotAreaBorderWidth: 0,
             borderColor: Colors.transparent,
             primaryXAxis: NumericAxis(
               minimum: 1,
               maximum: 24,
               interval:1,
               isVisible: false,
               borderColor: Colors.transparent,

             ),
             primaryYAxis: NumericAxis(
               minimum: 40.0000,
               maximum: 93.0000,
               interval: 10,
               isVisible: false,
               borderWidth: 0,
               borderColor: Colors.transparent,
             ),
             series: <ChartSeries<chartData,int>>[
               SplineSeries(dataSource: data, xValueMapper: (chartData data,_)=>data.day, yValueMapper: (chartData data,_)=>data.price,color: Colors.greenAccent.shade400,width: 3,),
             ],
           ),
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(10.0),
                  color: Theme.of(context).backgroundColor,
                  height: 60,
                  width: 300,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index)=>GestureDetector(
                              onTap: (){
                                setState(() {
                                  currentSelect=index;
                                });
                              },
                              child: Container(
                                width: 60,
                                  height: 5,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: currentSelect== index?
                                    Theme.of(context).primaryColor : Colors.black,
                                  ),
                                  child:Text(
                                      categoriesList[index],
                                      style:TextStyle(
                                        color:currentSelect == index?
                                        Theme.of(context).textTheme.bodyText1!.color:
                                        Theme.of(context).textTheme.bodyText2!.color,
                                        fontSize: currentSelect ==index? 16:15,
                                        fontWeight: currentSelect ==index? FontWeight.bold:FontWeight.normal,
                                      )
                                  )
                              ),
                            ),
                            separatorBuilder:( context,index)=> SizedBox(width: 0,)  ,
                            itemCount: categoriesList.length),
                      ),
                    ],
                  )
                ),
                InkWell(onTap: (){
                  Navigator.pushNamed(context, '/candle');
                },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(8.0),
                    color: Theme.of(context).backgroundColor,
                    height: 60,
                    width: 60,
                    child: Center(child: Image.asset('asset/candelstick.jpg',),
                    ),
                  ),
                )
              ],
            ),
        ],
      )
    );
  }
}
