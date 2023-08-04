import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with TickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Stack(
          children: [
            Container(
              height: 90,
              padding: EdgeInsets.only(
                  right: 14,
                  left: 14,
                  top: MediaQuery.of(context).size.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/drawer.png'),
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Image.asset(
                    'assets/images/profile.png',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: 14,
                    left: 14,
                    top: MediaQuery.of(context).size.height * 0.12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: <Widget>[
                      Text(
                        "Let's find your dream house",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ]),
                    const SizedBox(
                      height: 28,
                    ),
                    Column(children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFD1D1D1),
                          ),
                          suffixIcon: Image.asset('assets/images/setting.png'),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Color(0xFFEAEBEC)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Color(0xFFEAEBEC)),
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(children: <Widget>[
                      Text(
                        "CATEGORIES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ]),
                    const SizedBox(
                      height: 19,
                    ),
                    Container(
                      child: TabBar(
                        indicatorColor: Color(0xFF6A3EE5),
                        controller: tabController,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorPadding: EdgeInsets.only(left: 0, right: 0),
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(
                          right: 22.5,
                          left: 22.5,
                        ),
                        labelColor: Color(0xFF6A3EE5),
                        unselectedLabelColor: Color(0xFFA1A1A1),
                        tabs: const [
                          Tab(
                            text: ('House'),
                          ),
                          Tab(
                            text: ('Apartment'),
                          ),
                          Tab(
                            text: ('Villa'),
                          ),
                          Tab(
                            text: ('Residence'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 380,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                              bottom: 10,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Properties Nearby',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'View All',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 330,
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 19),
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                              bottom: 10,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Properties Nearby',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'View All',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 330,
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 19),
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                              bottom: 10,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Properties Nearby',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'View All',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 330,
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 19),
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 19,
                              bottom: 10,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Properties Nearby',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'View All',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 330,
                                  child: ListView(
                                    padding: EdgeInsets.only(top: 19),
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        height: 190,
                                        width: 260.0,
                                        child: Card(
                                          elevation: 3.0,
                                          child: Column(children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/images/cardimage.png'),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0),
                                                      child: Text(
                                                        'Exclusive House',
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10, left: 35),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 18,
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34),
                                                      child: Text('4.6')),
                                                ]),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color(0xFFD1D1D1),
                                                ),
                                                Text('New York, USA',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFD1D1D1))),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/images/square.png',
                                                        ),
                                                        color:
                                                            Color(0xFFF89812),
                                                      ),
                                                      Text('170 m²',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFFD1D1D1))),
                                                    ],
                                                  ),
                                                ]),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 35),
                                                      child: ImageIcon(
                                                          AssetImage(
                                                              'assets/images/bathroom.png'),
                                                          color: Color(
                                                              0xFFF89812))),
                                                  Text('Bathrooms',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFFD1D1D1))),
                                                ]),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: <Widget>[
                      Text(
                        "Popular Properties",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ]),
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: double.maxFinite,
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                        'assets/images/cardimg2.png')),
                                Row(

                                    children: <Widget>[
                                      Text('Central House'),
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color: Color(0xFFD1D1D1),
                                        size: 30,
                                      ),
                                    ]),
                              ]),
                            ),
                          ),
                          Container(
                            height: 160,
                            width: double.maxFinite,
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                        'assets/images/cardimg2.png')),
                                Row(children: [
                                  Text('Central House'),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color(0xFFD1D1D1),
                                    size: 30,
                                  ),
                                ]),
                              ]),
                            ),
                          ),
                          Container(
                            height: 160,
                            width: double.maxFinite,
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(left: 14),
                                    child: Image.asset(
                                        'assets/images/cardimg2.png')),
                                Row(children: [
                                  Text('Central House'),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color(0xFFD1D1D1),
                                    size: 30,
                                  ),
                                ]),
                              ]),
                            ),
                          ),
                          Container(
                            height: 50,
                            color: Colors.amber[500],
                            child: const Center(child: Text('Entry B')),
                          ),
                          Container(
                            height: 50,
                            color: Colors.amber[100],
                            child: const Center(child: Text('Entry C')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: '__',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30,
              ),
              label: '__',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                size: 30,
              ),
              label: '__',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 30,
              ),
              label: '__',
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xFF6A3EE5),
          unselectedItemColor: Color(0xFFA1A1A1),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
