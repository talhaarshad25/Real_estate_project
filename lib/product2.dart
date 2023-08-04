
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate_project/utils/carousel.dart';
import 'package:realestate_project/utils/expandable_text_2.dart';

class Product2 extends StatefulWidget {
  const Product2({Key? key}) : super(key: key);

  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {




  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFF2F2F2), // navigation bar color
      statusBarColor: Color(0xFFF2F2F2), // status bar color
    ));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFFF2F2F2),
        title: const Text(
          'Property Details',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Container(
        height: 896,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFF2F2F2),
        padding: EdgeInsets.only(top: 9, right: 14, left: 14),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  color: Color(0xFFFFFFFF),
                  padding: EdgeInsets.all(14),

                  child:Column(
                    children: [
                      ImageCarousel(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Dream House',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(

                        children: <Widget>[
                          Container(
                            // padding: EdgeInsets.only(
                            //     top: 10, bottom: 9, left: 25, right: 2),
                            color: Color(0xFFFFFFFF),
                            child: Row(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage(
                                    'assets/images/square.png',
                                  ),
                                  color: Color(0xFFF89812),
                                ),
                                Text('140 m²',
                                    style: TextStyle(color: Color(0xFFA1A1A1))),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 9, left: 25, right: 20),
                            color: Color(0xFFFFFFFF),
                            child: Row(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage(
                                    'assets/images/beds.png',
                                  ),
                                  color: Color(0xFFF89812),
                                ),
                                Text('4 beds',
                                    style: TextStyle(color: Color(0xFFA1A1A1))),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 9, left: 25, right: 20),
                            color: Color(0xFFFFFFFF),
                            child: Row(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage(
                                    'assets/images/bathroom.png',
                                  ),
                                  color: Color(0xFFF89812),
                                ),
                                Text('3 baths',
                                    style: TextStyle(color: Color(0xFFA1A1A1))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 60,
                            height:60,
                            child: Image.asset('assets/images/prfile.png'),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Container(
                              width: 60,
                              height:60,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Owner',textAlign: TextAlign.start,),
                                  Text('Russell Sprout',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600) ,),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height:25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            height:60,

                            child:Row(
                            children: <Widget>[
                              Container(decoration:BoxDecoration(color: Color(0xFFF3EFFF),
                                    borderRadius: BorderRadius.all(Radius.circular(29)),),
                                  child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/phone.png',height: 40,width: 40,))),
                            ]),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            height:60,
                            child:Row(
                                children: <Widget>[
                            Container(decoration:BoxDecoration(color: Color(0xFFF3EFFF),
                            borderRadius: BorderRadius.all(Radius.circular(29)),),
                                child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/chat.png',height: 40,width: 40,))),
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
              ),
            SizedBox(
              height: 10,
            ),
            Row(
                children: <Widget>[
                  Text('Description',style: GoogleFonts.poppins(fontSize: 16,fontWeight:FontWeight.w500),),
                ]
            ),
            Row(
                children: <Widget>[
                  Expanded(
                  child: DescriptionTextWidget2(text:"Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque house Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque hou Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque housese")
                  ),]
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,

              padding: EdgeInsets.all(14),
              decoration:BoxDecoration(color: Color(0xFFFFFFFF),borderRadius: BorderRadius.all(Radius.circular(8))),
              child:Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Text('Location',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
                  ],),
                  SizedBox(
                    height: 9,
                  ),
                  Row(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8)
                      ),
                          padding: EdgeInsets.all(19),
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: [
                                  Image.asset('assets/images/location.png'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('2537 St, Big Star Building, New York, USA',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],),
                  Row(children: <Widget>[],),




                ],),


            ),

            ],),
        ),
      ),

    );
  }
}

