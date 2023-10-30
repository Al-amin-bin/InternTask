import 'package:assignment/data/achive_data_model.dart';
import 'package:assignment/data/chatDataModel.dart';
import 'package:assignment/presentation/UI/Screens/Friend_screen.dart';
import 'package:assignment/presentation/UI/widgets/action_drawer_icon.dart';
import 'package:flutter/material.dart';

class MassageScreen extends StatefulWidget {
  const MassageScreen({super.key});

  @override
  State<MassageScreen> createState() => _MassageScreenState();
}

class _MassageScreenState extends State<MassageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 30),
          child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                'Messages',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                  height: 0.04,
                ),
              ),
              actions: [
                const ActionDrawerIcon()
              ]
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
          child:

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FriendScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05000000074505806),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Color.fromARGB(255, 68, 66, 66),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                const SizedBox(height: 6,),
              const Text(
                'Activities',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8,),
              const SizedBox(
                height: 88,
                child: AchiveChats(),
              ),
              const SizedBox(height: 8,),
              const Text(
                'Messages',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const RecentChats()




            ],

          ),
        ),
      )
    );
  }
}

class RecentChats extends StatelessWidget {
  const RecentChats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
       physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: recentChatData.length,
        itemBuilder: (context, index){
          if(recentChatData[index].activeStory ==true){
            return ListTile(
              leading:Container(
                width: 56,
                height: 56,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(
                    side: BorderSide(width: 2, color: Color(0xFFF27121)),
                  ),
                ),
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: Colors.white),
                    ),
                  ),
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration:  ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(recentChatData[index].imagePath),
                        fit: BoxFit.cover,
                      ),
                      shape: const OvalBorder(),
                    ),
                  ),
                ),
              ),
              title:  Text(
                recentChatData[index].name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                  height: 0.11,
                ),
              ),
              subtitle:  Text(
                '${recentChatData[index].msg} ',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${recentChatData[index].time} min',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Color(0xFFADAFBB),
                        fontSize: 12,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w700,
                        height: 0.12,
                      ),
                    ),
                    const Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w700,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      return ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration:  ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(recentChatData[index].imagePath),
              fit: BoxFit.cover,
            ),
            shape: const OvalBorder(),
          ),
        ),
        title:  Text(
          recentChatData[index].name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Sk-Modernist',
            fontWeight: FontWeight.w700,
            height: 0.11,
          ),
        ),
        subtitle:  Text(
          '${recentChatData[index].msg} ',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Sk-Modernist',
            fontWeight: FontWeight.w400,
            height: 0.11,
          ),
        ),
        trailing:  Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${recentChatData[index].time} min',
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Color(0xFFADAFBB),
                  fontSize: 12,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                  height: 0.12,
                ),
              ),
              const Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                  height: 0.12,
                ),
              ),
            ],
          ),
        ),
      );
    }, separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 3,);
    },);
  }
}

class AchiveChats extends StatelessWidget {
  const AchiveChats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print(recentChatData.length);
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: achiveDataList.length,
        itemBuilder: (context,index){
        if(achiveDataList[index].activeStory == true){
          return Column(
            children: [
              Container(
                width: 66,
                height: 66,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(
                    side: BorderSide(width: 2, color: Color(0xFFF27121)),
                  ),
                ),
                child: Container(
                  width: 62,
                  height: 62,
                  decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color:Colors.white),
                    ),
                  ),
                  child: Container(
                    width: 58,
                    height: 58,
                    decoration: ShapeDecoration(

                      image:   DecorationImage(
                        image: AssetImage(achiveDataList[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                achiveDataList[index].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,

                ),
              ),
            ],
          );
        }
        return Column(
          children: [
          Container(
          width: 58,
          height: 58,
          decoration: ShapeDecoration(

            image:   DecorationImage(
              image: AssetImage(achiveDataList[index].imageUrl),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),const Spacer(),
             Text(
              achiveDataList[index].name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w700,

              ),
            ),
          ],
        );




    }, separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 5,);
    },);
  }
}
