

import 'package:assignment/presentation/UI/widgets/action_drawer_icon.dart';
import 'package:assignment/presentation/UI/widgets/back_button_Icon.dart';
import 'package:assignment/presentation/UI/widgets/rating_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_swipe/flutter_tinder_swipe.dart';

class SwapRightScreen extends StatefulWidget {
  const SwapRightScreen({super.key});

  @override
  State<SwapRightScreen> createState() => _SwapRightScreenState();
}

class _SwapRightScreenState extends State<SwapRightScreen> {
  CardController controller = CardController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 30),
          child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Center(
                child: Column(
                  children: [
                    Text(
                      'Discover',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    Text(
                      'chologa, II',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                  ],
                )
              ),

              actions: [
                const ActionDrawerIcon(),
              ],
            leading: const BackOutLineButtonIcon(iconColor: 0xFFE94057, fillColor: 0xFFEFFFFFF,),
          ),

        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 40, right: 40),
        child: Center(
          child: Column(
            children: [
              Container(
                height: size.height * 0.5,
                child: SwipeCard(
                  swipeEdgeVertical: 8.0,
                  animDuration: 500,
                  totalNum: 3,
                  stackNum: 3,
                  swipeEdge: 2.0,
                  allowVerticalMovement: false,
                  maxWidth: MediaQuery.of(context).size.width * 1,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width + 120 * 0.88,
                  maxHeight: MediaQuery.of(context).size.width + 120 * 0.99,
                  cardBuilder: (context, index) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: FadeInImage(
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height * 1,
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(
                                    imageItems[index]['image'],
                                  ),
                                  placeholder: AssetImage(
                                    imageItems[index]['image'],
                                  ),
                                ),
                              ),
                              Positioned(child: Container(
                                height: 380,
                                child: Center(child: Container(
                                  width: 99,
                                  height: 99,
                                  child: Image.asset("assets/images/icon/like.png",color: Color(0xFFE94057),),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x11000000),
                                        blurRadius: 15,
                                        offset: Offset(0, 15),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),),
                                decoration: const ShapeDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/images/music2.png",)
                                  ),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                                  ),
                                ),
                              ),),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.infinity,
                                  height: size.height * 0.15,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.white,
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black45,
                                        ],
                                        begin: FractionalOffset(1.0, 0.0),
                                        end: FractionalOffset(0.0, 1.0),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Kylie Jean , 23",
                                            style: TextStyle(
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w400,
                                                fontSize: size.width * 0.08),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left),
                                        Text(
                                          'Marketer',
                                          style: TextStyle(
                                              color: const Color(0xffffffff),
                                              fontWeight: FontWeight.w400,
                                              fontSize: size.width * 0.04),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))),

                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping

                    } else if (align.x > 0) {
                      //Card is RIGHT swiping

                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {}, cardController: controller,
                ),
              ),
              const SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.only(left: 35),
                child: RatingIconWidgets(),
              )
            ],

          ),
        ),

      ),
    );
  }
}
List<dynamic> imageItems = [
  {
    "image": "assets/images/profile/allPhoto/photo (8).png",
  },
  {
    "image": "assets/images/profile/allPhoto/photo (5).png",
  },
  {
    "image": "assets/images/profile/allPhoto/photo (6).png",
  },
  {
    "image": "assets/images/profile/allPhoto/photo (8).png",
  },
];

