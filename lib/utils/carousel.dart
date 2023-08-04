

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// int currentIndex = 0;
// List<String> images=[
//   'assets/images/csm_thumb-ai-call-eu_65099c6c21.jpg',
//   'assets/images/istockphoto-1146517111-612x612.jpg',
//   'assets/images/tree-736885__480.jpg',
// ];

//
// class carouselSlider1 extends StatefulWidget {
//   const carouselSlider1({Key? key}) : super(key: key);
//
//   @override
//   State<carouselSlider1> createState() => _carouselSlider1State();
// }
//
// class _carouselSlider1State extends State<carouselSlider1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.35,
//                 child: PageView.builder(
//                   onPageChanged: (index){
//                     setState((){
//                       currentIndex = index % images.length;
//                     });
//                   },
//                   itemBuilder: (context,index){
//                     return Container(
//
//                       decoration: BoxDecoration(
//                         border:Border.all(color: Colors.red),
//                         borderRadius: BorderRadius.all(Radius.circular(30)),
//                       ),
//                       child: SizedBox(
//
//                         height: MediaQuery.of(context).size.height,
//                         width: double.infinity,
//                         child: Image.asset(images[index % images.length],fit:BoxFit.fill,),
//
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Positioned(
//                 bottom: 110,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   for (var i =0; i < images.length; i++) buildIndicator(currentIndex == i)
//                 ],),
//
//             ],
//           ),
//         ]
//       ),
//
//     );
//   }
// }
//   Widget buildIndicator(bool isSelected){
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 1,),
//       child: Container(
//
//         margin: EdgeInsets.only(top:1),
//         height: isSelected ? 12 : 8,
//         width: isSelected ? 12 : 8,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: isSelected? Color(0xFF6A3EE5) : Color(0xFFE5E2ED),
//         ),
//       ),
//     );
//   }
//





class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;

  List<String> _images = [
    'assets/images/csm_thumb-ai-call-eu_65099c6c21.jpg',
    'assets/images/istockphoto-1146517111-612x612.jpg',
    'assets/images/tree-736885__480.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CarouselSlider(
          items: _images.map((image) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 16 / 9, // Set the desired aspect ratio here
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 1.0,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Positioned(

          bottom: 20.0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right:128,left: 128),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(18))
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _images.map((image) {
                int index = _images.indexOf(image);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Color(0xFF6A3EE5) : Color(0xFFE5E2ED),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}


