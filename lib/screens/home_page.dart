import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'category_details.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final imageUrl = [
    'https://img.freepik.com/free-vector/flat-design-minimal-boutique-sale-background_23-2149337460.jpg?size=626&ext=jpg&ga=GA1.2.1203150371.1680086102&semt=ais',
    'https://img.freepik.com/premium-vector/digital-marketing-cover-page-timeline-web-ad-banner-template_527081-705.jpg?w=1380',
    'https://img.freepik.com/premium-psd/digital-marketing-corporate-social-media-facebook-cover-template_233825-125.jpg?size=626&ext=jpg&ga=GA1.1.1203150371.1680086102&semt=sph',
    'https://img.freepik.com/free-vector/webinar-banner-invitation-template-with-photo_23-2148757952.jpg?w=1060&t=st=1684991408~exp=1684992008~hmac=46b00d1d5bd24616696f2497970544814fabc84930da6d4cb3fca3b3a5c0314a',
    'https://img.freepik.com/premium-vector/digital-marketing-agency-facebook-cover-template_349013-63.jpg?w=1380',
    'https://img.freepik.com/free-vector/watercolor-food-facebook-cover_23-2149078873.jpg?w=1380&t=st=1684991456~exp=1684992056~hmac=72e9ad058278e99e4ab0dac3cffdcc2202a276cd6dbd1490ebf05f3b153cdfd8'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child:
        Container(
          color: Colors.teal[100],
          child:
          Stack(
            children:[
              Column(
              children: [
                Expanded(flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[500],
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Stack(
                          children:[
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                                    SizedBox(width: 60,),
                                    Text("S T A R T",style: TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 9,),
                                    Text("B U Y     🎁",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 13,),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_sharp)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.card_travel)),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Column(
                                  children: [
                                    CarouselSlider.builder(
                                        itemCount: imageUrl.length,
                                        itemBuilder: (context,index, realIndex){
                                          final imageUrl2 = imageUrl[index];
                                          return buildImage(imageUrl, index);
                                        },
                                        options: CarouselOptions(
                                            autoPlay: true,
                                            height: 199,
                                            onPageChanged: (index, reason){
                                              setState(() {
                                                activeIndex = index;
                                              });
                                            }
                                        )
                                    ),
                                    SizedBox(height: 20,),
                                    buildIndicator(),
                                  ],
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(top: 35)),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("All Categories"),
                                Text("View All Products")
                              ],
                            ),
                            SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Stack(
                                            children:[
                                              Center(
                                                  child: IconButton(onPressed: (){
                                                    Navigator.pushReplacement(context,
                                                        MaterialPageRoute(builder: (context)=>CategoryDetails()));
                                                  },
                                                  icon:Icon(Icons.production_quantity_limits_sharp,size: 35,color: Colors.teal,)))
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Stack(
                                            children:[
                                              Center(child: IconButton(onPressed: (){},
                                                  icon:Icon(Icons.wb_auto_sharp,size: 35,color: Colors.teal,)))
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Stack(
                                            children:[
                                              Center(child: IconButton(onPressed: (){},
                                                  icon:Icon(Icons.unfold_less,size: 35,color: Colors.teal,)))
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Stack(
                                            children:[
                                              Center(child: IconButton(onPressed: (){},
                                                  icon:Icon(Icons.sick_rounded,size: 35,color: Colors.teal,)))
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Stack(
                                            children:[
                                              Center(child: IconButton(onPressed: (){},
                                                  icon:Icon(Icons.list_alt_rounded,size: 35,color: Colors.teal,)))
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Stack(
                                            children:[
                                              Center(child: IconButton(onPressed: (){},
                                                  icon:Icon(Icons.join_left_rounded,size: 35,color: Colors.teal,)))
                                            ]
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Features"),
                                Text("View All Products")
                              ],
                            ),
                            SizedBox(height: 15,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: 170,width: MediaQuery.of(context).size.width/2-20,color: Colors.grey[300],
                                    child: Image.network('https://images.unsplash.com/photo-1552323356-322f06b49db4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=621&q=80',
                                    fit: BoxFit.cover,),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 170,width: MediaQuery.of(context).size.width/2-20,color: Colors.grey[300],
                                    child: Image.network('https://images.unsplash.com/photo-1553404175-78ecf5776a16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=509&q=80',
                                      fit: BoxFit.cover,),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 170,width: MediaQuery.of(context).size.width/2-20,color: Colors.grey[300],
                                    child: Image.network('https://images.unsplash.com/photo-1568251723346-462c2abfd420?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=733&q=80',
                                      fit: BoxFit.cover,),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 170,width: MediaQuery.of(context).size.width/2-20,color: Colors.grey[300],
                                    child: Image.network('https://images.unsplash.com/photo-1517666467076-d6453b500ade?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80',
                                      fit: BoxFit.cover,),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 170,width: MediaQuery.of(context).size.width/2-20,color: Colors.grey[300],
                                    child: Image.network('https://images.unsplash.com/photo-1516888025321-1156dc2b64a8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80',
                                      fit: BoxFit.cover,),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ),
              ],
            ),
              Positioned(
                  top: 315,
                  right: 40, child:
              Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.white,
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Search 500+ Products"),
                    IconButton(onPressed: (){},
                      icon: Icon(Icons.search_rounded, size:25,color:Colors.teal[500] ,),
                      alignment: Alignment.centerRight,),
                  ],
                ),
              )
              )
            ]
          ),
        ),
      ),
    );
  }


  Widget buildImage(List<String> imageUrl, int index) => Container(

     margin: EdgeInsets.all(9),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),
        child: Image.network(imageUrl[index],fit: BoxFit.cover,)),

    );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageUrl.length,
    effect: JumpingDotEffect(
      jumpScale: 1.6,
      dotColor: Colors.white,
      activeDotColor: Colors.black,
      dotHeight: 12,
      dotWidth: 12
    ),
  );

}
