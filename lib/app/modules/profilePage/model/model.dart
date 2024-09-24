
//Story Model
class StoryModel {
  String? text;
  String? imageUrl;
  Function? onTap;

  StoryModel({
    this.imageUrl,
    this.text,
    this.onTap,
  });
}

//Followers Model
class FollowersModel {
  String? name;
  String? imageUrl;
  Function? onTap;

  FollowersModel({
    this.imageUrl,
    this.name,
    this.onTap,
  });
}