import '../../../uitils/images.dart';
class User{
  String? image;
  String? name;
  String? email;
  User({this.image, this.name, this.email});
}
List<User> user= [
  User(
  name: 'Afsar Hossen',
  image: AppImages.userImage,
  email: 'Imshuvo97@gmail.com',
),
];