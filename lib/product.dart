import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realestate_project/utils/expandable_text_view.dart';

class productpage extends StatefulWidget {
  const productpage({Key? key}) : super(key: key);

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  @override
  int _currentIndex = 0;

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
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFF2F2F2),
        padding: EdgeInsets.only(top: 9, right: 14, left: 14),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/pr1.png'),
              SizedBox(
                height: 14,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Vacation House',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$1600/ ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF6A3EE5)),
                              ),
                              Text(
                                'month',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFA1A1A1)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 5),
                              // Adjust the spacing between icon and text
                              Text(
                                '5.0',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 9, left: 25, right: 25),
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
                            top: 10, bottom: 9, left: 25, right: 25),
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
                            top: 10, bottom: 9, left: 25, right: 25),
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
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: DescriptionTextWidget(text:"Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque house Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque hou Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque housese")
                          /*Text(
                            'Nulla in finibus mauris. Etiam justo nisl, sollicitudin porttitor interdum id, congue quis nibh. Donec rutrum nibh non velit tincidunt pellentesque house see more…',
                            maxLines: 4,
                          ),*/
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'GALLERY',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 80,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 80.0,
                          child: Image.asset('assets/images/pgallery.png'),
                        ),
                        SizedBox(
                          width: 14,
                          child: Image.asset('assets/images/pgallery.png'),
                        ),
                        Container(
                          width: 80.0,
                          child: Image.asset('assets/images/pgallery.png'),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          width: 80.0,
                          child: Image.asset('assets/images/pgallery.png'),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          width: 80.0,
                          child: Image.asset('assets/images/pgallery.png'),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          width: 80.0,
                          child: Image.asset('assets/images/pgallery.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent, child: bottomNextButton(context)),
    );
  }

  Widget bottomNextButton(context) {
    return Container(
      height: 110,
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(

                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF6A3EE5)),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: Text("Book Now"),
          ),
        ),
      ),
    );
  }
}
