import 'package:assignment/presentation/UI/Screens/swap_right_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({super.key});

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top:39, right: 40),
                child: TextButton(
                  onPressed: (){},
                  child:  const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFFE94057),
                      fontSize: 16,
                      fontFamily: 'Sk-Modernist',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Center(child: SvgPicture.asset("assets/images/people.svg",height: 240,width: 240,)),
            const SizedBox(height: 20,),
            const Text(
              'Search friend’s',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,

              ),
            ),
            const SizedBox(height: 8,),
            Text(
              'You can find friends from your contact lists\nto connected',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            SizedBox(width:double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text("Access to a contact list")))

          ],

        ),
      ),

    );
  }
}
