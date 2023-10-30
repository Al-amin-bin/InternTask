import 'package:assignment/data/chatDataModel.dart';

class AchiveData{
  final String name, imageUrl;
  final bool activeStory;
  AchiveData( {
    this.name="",
    this.imageUrl="",
    this.activeStory=false,
});

}

List achiveDataList = [
  AchiveData(
    name: "You",
    imageUrl: "assets/images/me.png",
    activeStory: false,
  ),
  AchiveData(
    name: "Emelie",
    imageUrl: "assets/images/profile/emelie.png",
    activeStory: true,
  ), AchiveData(
    name: "Ablgall",
    imageUrl: "assets/images/profile/ablgail.png",
    activeStory: false,
  ),AchiveData(
    name: "Elizabeth",
    imageUrl: "assets/images/profile/elizabeth.png",
    activeStory: true,
  ),AchiveData(
    name: "Penelope",
    imageUrl: "assets/images/profile/penelope.png",
    activeStory: false,
  ),AchiveData(
    name: "Chloe",
    imageUrl: "assets/images/profile/chloe.png",
    activeStory: false,
  ),AchiveData(
    name: "Grance",
    imageUrl: "assets/images/profile/Grance.png",
    activeStory: true,
  ), AchiveData(
    name: "Ablgall",
    imageUrl: "assets/images/profile/ablgail.png",
    activeStory: false,
  ),AchiveData(
    name: "Elizabeth",
    imageUrl: "assets/images/profile/elizabeth.png",
    activeStory: true,
  ),AchiveData(
    name: "Penelope",
    imageUrl: "assets/images/profile/penelope.png",
    activeStory: false,
  ),AchiveData(
    name: "Chloe",
    imageUrl: "assets/images/profile/chloe.png",
    activeStory: false,
  ),AchiveData(
    name: "Grance",
    imageUrl: "assets/images/profile/Grance.png",
    activeStory: true,
  ),
];