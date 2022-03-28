import 'package:flutter/material.dart';
import 'package:penjualan/screens/supplier_screens.dart';
import 'package:penjualan/profile_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final Shader _linearGradient = LinearGradient(
    colors: [Colors.lightGreen, Colors.white],
  ).createShader(Rect.fromLTWH(160, 160, 10, 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('PENJUALAN PAKAIAN')),
        actions: [
          // action button
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => SupplierScreen());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.white]),
            borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: <Widget>[
            dashBg,
            content,
          ],
        ),
      ),
    );
  }

  get dashBg => Column(
        children: <Widget>[
          Expanded(
            child: Container(
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.topRight,
              //         end: Alignment.bottomLeft,
              //         stops: [
              //       0.1,
              //       0.4,
              //       0.7,
              //       0.5
              //     ],
              //         colors: [
              //       Color.fromARGB(255, 132, 202, 255),
              //       Color.fromARGB(255, 69, 172, 251),
              //       Colors.blue,
              //       Colors.blue,
              //     ])),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.white, Colors.blueAccent, Colors.white],
                  center: Alignment(0.9, -0.8),
                  focal: Alignment(0.3, -0.5),
                  focalRadius: 2.0,
                ),
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(color: Colors.transparent),
            flex: 5,
          ),
        ],
      );
  get header => ListTile(
        contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
        title: Text(
          'SELAMAT DATANG',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      );

  get content => Container(
        child: Column(
          children: <Widget>[
            header,
            new GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => ProfileApp());
                // Navigator.push(context, route);
              },
              child: new Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        color: Colors.white,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.40),
                              BlendMode.multiply),
                          image: AssetImage('images/home.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                '',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                      height: 180,
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
