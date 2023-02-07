import 'package:flutter/material.dart';

class Bottompart extends StatefulWidget {
  const Bottompart({Key? key}) : super(key: key);

  @override
  State<Bottompart> createState() => _BottompartState();
}

class _BottompartState extends State<Bottompart> {
  final categoriesList =[
    'Strong Buy',
    'Buy',
    'Hold',
    'Sell',
    'Strong Sell',
  ];
  int currentSelect=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: EdgeInsets.all(10.0),
      color: Colors.black,
      padding: EdgeInsets.all(10.0),
      child:Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Analyst Rating',style:Theme.of(context).textTheme.bodyText1),
                Container(width:40,height:40,child: Image.asset('asset/starrate.png')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 160,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade400,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(child: Text('Buy',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),)),
                ),
                Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                    child: Center(child: Text('Sell',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black,fontSize: 20),)),
                  ),
              ],
            ),
          ),
          Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(20.0),
                color: Theme.of(context).backgroundColor,
                height: 100,
                child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        width: 70,
                        height: 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.black,
                        ),
                        child:Text(
                        categoriesList[index],
                        textAlign: TextAlign.center,
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
                      ),
            ),
        ],
      )
    );
  }
}
