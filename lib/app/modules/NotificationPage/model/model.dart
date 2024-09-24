

//Notification Model
class NotificationModel {
  String? name;
  String? imageUrl;
  String? type;
  String? time;
  String? description;
  Function? onTap;
  

  NotificationModel({
    this.imageUrl,
    this.name,
    this.time,
    this.type,
    this.description,
    this.onTap,
  });
}