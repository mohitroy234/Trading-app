import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class Candle_stick extends StatefulWidget {
  const Candle_stick({Key? key}) : super(key: key);

  @override
  State<Candle_stick> createState() => _Candle_stickState();
}

class _Candle_stickState extends State<Candle_stick> {
  late List<ChartSampleData> _Chartdata;
  late TrackballBehavior _trackballBehavior;
  @override
  void initState(){
    _Chartdata=getChartData();
    _trackballBehavior=TrackballBehavior(enable: true,activationMode: ActivationMode.singleTap);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Center(
        child: SfCartesianChart(
          margin: EdgeInsets.all(0),
          borderWidth: 0,
          plotAreaBorderWidth: 0,
          borderColor: Colors.transparent,
          trackballBehavior: _trackballBehavior,
          primaryXAxis:DateTimeAxis(

          ) ,
          primaryYAxis: NumericAxis(minimum: 40.00,
              maximum: 93.00,
              interval: 10.00,
              borderColor: Colors.transparent
          ),
          series: <CandleSeries<ChartSampleData,DateTime>>[
            CandleSeries(dataSource:_Chartdata, xValueMapper: (ChartSampleData _Chartdata,_)=>_Chartdata.x, lowValueMapper: (ChartSampleData _Chartdata,_)=>_Chartdata.low, highValueMapper:(ChartSampleData _Chartdata,_)=>_Chartdata.high, openValueMapper:(ChartSampleData _Chartdata,_)=>_Chartdata.open, closeValueMapper: (ChartSampleData _Chartdata,_)=>_Chartdata.close,)
          ],
        ),
      ),
    ));
  }
  List<ChartSampleData> getChartData(){
    return <ChartSampleData>[ChartSampleData(
      x:DateTime(2023,12,01),
      open: 30.0,
      high: 40.0,
      low:  37.0,
      color: Colors.green,
    ),
    ChartSampleData(
    x:DateTime(2023,12,02),
    open: 40.0,
    high: 42.0,
    low:  40.0,
      color: Colors.green,
    ),
    ChartSampleData(
    x:DateTime(2023,12,03),
    open: 42.0,
    high: 43.0,
    low:  38.0,
    ),
      ChartSampleData(
        x:DateTime(2023,12,04),
        open: 38.0,
        high: 39.0,
        low:  37.0,
        color: Colors.green,
      ),
      ChartSampleData(
        x:DateTime(2023,12,05),
        open: 37.0,
        high: 50.0,
        low:  40.0,
        color: Colors.green,
      ),
      ChartSampleData(
        x:DateTime(2023,12,06),
        open: 41.0,
        high: 54.0,
        low:  40.0,
        color: Colors.green,
      ),
      ChartSampleData(
        x:DateTime(2023,12,07),
        open: 40.0,
        high: 41.0,
        low:  40.0,
        color: Colors.red,
      ),
      ChartSampleData(
        x:DateTime(2023,12,08),
        open: 41.0,
        high: 45.0,
        low:  43.0,
        color: Colors.red,
      ),
      ChartSampleData(
        x:DateTime(2023,12,09),
        open: 45.0,
        high: 56.0,
        low:  47.0,
        color: Colors.red,
      ),
      ChartSampleData(
        x:DateTime(2023,12,10),
        open: 47.0,
        high: 60.0,
        low:  50.0,
          color: Colors.green,
      ),ChartSampleData(
        x:DateTime(2023,12,11),
        open: 50.0,
        high: 61.2,
        low:  60.0,
          color: Colors.green
      ),
      ChartSampleData(
        x:DateTime(2023,12,12),
        open: 61.4,
        high: 62.5,
        low:  54.6,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,13),
        open: 55.0,
        high: 75.2,
        low:  70.4,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,14),
        open: 70.0,
        high: 70.9,
        low:  65.4,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,15),
        open: 66.0,
        high: 67.9,
        low:  49.9,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,16),
        open: 50.0,
        high: 55.5,
        low:  53.0,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,17),
        open: 54.0,
        high: 77.7,
        low:  56.8,
          color: Colors.green
      ),
      ChartSampleData(
        x:DateTime(2023,12,18),
        open: 75.0,
        high: 76.8,
        low:  72.0,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,19),
        open: 70.0,
        high: 77.8,
        low:  75.8,
          color: Colors.green
      ),
      ChartSampleData(
        x:DateTime(2023,12,20),
        open: 75.4,
        high: 79.0,
        low:  76.0,
          color: Colors.green
      ),
      ChartSampleData(
        x:DateTime(2023,12,21),
        open: 78.0,
        high: 80.8,
        low:  79.5,
          color: Colors.red
      ),
      ChartSampleData(
        x:DateTime(2023,12,22),
        open: 80.0,
        high: 84.5,
        low:  79.0,
          color: Colors.green
      ),
      ChartSampleData(
        x:DateTime(2023,12,23),
        open: 76.0,
        high: 83.4,
        low:  80.7,
          color: Colors.green
      ),
      ChartSampleData(
        x:DateTime(2023,12,24),
        open: 79.0,
        high: 92.2,
        low:  85.4,
          color: Colors.green
      ),




    ];
  }
}

class ChartSampleData {

  final DateTime?x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
  final Color? color;
  ChartSampleData({
    this.x,
    this.open,
    this.close,
    this.low,
    this.high,
    this.color
  });
}