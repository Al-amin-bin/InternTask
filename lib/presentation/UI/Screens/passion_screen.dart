import 'package:assignment/data/passion_screen_data_model.dart';
import 'package:assignment/presentation/UI/widgets/back_button_Icon.dart';
import 'package:flutter/material.dart';


class PassionScreen extends StatefulWidget {
  const PassionScreen({super.key});

  @override
  State<PassionScreen> createState() => _PassionScreenState();
}

class _PassionScreenState extends State<PassionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackOutLineButtonIcon(iconColor: 0xFFE94057, fillColor: 0xFFEFFFFFF,),
                TextButton(
                  onPressed: () {},
                  child: const Text(
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your interests',
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Select a few of your interests and let everyone know what you’re passionate about.',
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 420,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 50),
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      height: 45,
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset("${iconPath[index]}",color: const Color(0xFFE94057),),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "${title[index]}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Sk-Modernist',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    );
                  }),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Continue"),
              ),
            )
          ],
        ),
      ),
    ));
  }
}


