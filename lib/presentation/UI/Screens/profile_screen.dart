import 'package:assignment/presentation/UI/widgets/back_button_Icon.dart';
import 'package:assignment/presentation/UI/widgets/rating_icon.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
              children: [


              Positioned(
                child: Container(
                  width: screenWidth,
                  height: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/profilePhoto.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
                const Positioned(
              left: 40,
              top: 40,
              child:BackOutLineButtonIcon(iconColor:  0xFFEFFFFFF, fillColor: 0xFFEE8E6EA,),),


              Positioned(
                top: 425,
               child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                 decoration: const ShapeDecoration(
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(30),
                       topRight: Radius.circular(30),
                     ),
                   ),
                 ),
                ),
              ),

                const Positioned(
              top: 378,
              left: 62,
              child: RatingIconWidgets()

              ,),

              ]
              ),
              const SizedBox(height: 20,),
              ProfileDetails(screenWidth: screenWidth),
            ],
          ),
        ),
      )
    );
  }


}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 40,top: 40,right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
          'Jessica Parker, 23',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Sk-Modernist',
            fontWeight: FontWeight.w700,
            height: 0.06,
          ),
        ),
                    const SizedBox(height: 12,),
                    Text(
                      'Proffesional model',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.699999988079071),
                        fontSize: 14,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w400,

                      ),
                    ),

                  ],
                ),
                Container(
                  width: 52,
                  height: 52,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Image.asset("assets/images/icon/send.png"),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Text(
                      'Chicago, IL United States',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.699999988079071),
                        fontSize: 14,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),

                  ],
                ),
                Container(
                  width: 61,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE94057).withOpacity(.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin,color: Color(0xFFE94057),size: 20,),Text(
                        '1 km',
                        style: TextStyle(
                          color: Color(0xFFE94057),
                          fontSize: 12,
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.w700,
                          height: 0.12,
                        ),
                      ),],),
                ),
              ],
            ),
            const SizedBox(height: 16,),

            const Text(
              'About',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,

              ),
            ),
            const SizedBox(height: 6,),
            Text(
              'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..',
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w400,

              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              'Read more',
              style: TextStyle(
                color: Color(0xFFE94057),
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,

              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Interests',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,
                height: 0.09,
              ),
            ),
            const SizedBox(height: 8,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InterestedItems(title: 'Travelling', color: 0xFFE94057,),
                InterestedItems(title: 'Books', color: 0xFFE94057,),
                InterestedItems(title: 'Music', color: 0xFFE000000,),
              ],
            ),
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gallery',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFFE94057),
                    fontSize: 14,
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w700,
                  ),
                ),

              ],
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                Container(
                  width: 162,
                  height: 220,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile/allPhoto/photo (4).png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 162,
                  height: 220,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/music2.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 6,),
            Row(
              children: [
                Container(
                  width: 106,
                  height: 122,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile/allPhoto/photo (5).png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const SizedBox(width: 4,),
                Container(
                  // width: double.infinity/3-3,
                  width: 106,
                  height: 122,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile/allPhoto/photo (6).png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),const SizedBox(width: 4,),
                Container(
                  width: 106,
                  height: 122,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile/allPhoto/photo (6).png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            )

          ],

        ),
      ),

    );
  }
}

class InterestedItems extends StatelessWidget {
  const InterestedItems({
    super.key, required this.color, required this.title,
  });
  final String  title;
  final int color;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 32,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(color)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.done_all_rounded,color: Color(0xFFE94057),size: 20,),
            const SizedBox(width: 3,),
            Text(
              title,
              style: TextStyle(
                color: Color(color),
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,
                height: 0.11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




