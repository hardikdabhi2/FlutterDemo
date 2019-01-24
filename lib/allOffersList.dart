
import 'package:flutter/material.dart';

void main() => runApp(AllOfferList());

class AllOfferList extends StatefulWidget {
  @override
  _AllOfferListState createState() => _AllOfferListState();
}

class _AllOfferListState extends State<AllOfferList> {
  @override
  Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;

//This is for card view for Offer list

Widget _offerCardView = new Container(
  height: 250,
  width: size.width,
  // color: Colors.red,
  padding: new EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
  child: new Container(
    // color: Colors.black,
    child: new Material(
      borderRadius: BorderRadius.circular(15),
      color: Colors.red,
      child: new Row(
        children: <Widget>[
          new Container(
            height: 234,
            width: size.width - 160,
            color: Colors.blue,
          ),
          new Container(
            height: 234,
            width: 130,
            padding: new EdgeInsets.all(8),
            color: Colors.white,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('20% Discount',
                style: TextStyle(color: Colors.red[800]),
                ),
                new Container(
                  height: 30,
                  width: 130,
                  // color: Colors.yellow,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        width: 65,
                        // color: Colors.blue,
                        child: Center(
                            child: new Stack(
                              children: <Widget>[
                               Center(child: new Text('\$150',
                                style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey
                                 ),
                               )),
                              Center(
                                 child: new Container(
                                  height: 2,
                                  width: 45,
                                  color: Colors.grey[800],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      new Container(
                        width:49,
                        // color: Colors.green,
                        child: new Text('\$120',
                                style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800]
                                 ),
                               ),
                      )
                    ],
                  ),
                ),
                new Text('Inc. off all taxes',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  ),
                ),
                new Text('* Free Cancellation',
                style: TextStyle(
                  color: Colors.green[500],
                  fontSize: 12,
                  ),
                ),
                SizedBox(height: 35,),
                new Container(
                  height: 35,
                  width: 150,
                  child: new Material(
                    color: Colors.red[700],
                    borderRadius: BorderRadius.circular(3),
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          height: 35,
                          width: 50,
                          child: new Center(
                            child: new Text('-',
                            style: TextStyle(
                              fontSize: 45
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueGrey,
          title:  new Text('Wabi Sabi Restaurant'),
          leading: new IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: size.height,
            width:size.width,
            color: Colors.grey[300],
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 50,
                  width: size.width,
                  // color: Colors.pink,
                  padding: new EdgeInsets.all(15),
                  child: new Text('20% off on black friday offer (Friday Only)',
                  style: new TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),
                  ),
                ),
                new SizedBox(
                  height: size.height-200,
                    child: new ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context,row){
                      return _offerCardView;
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}