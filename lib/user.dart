class User {
  String name;
  String address;
  String about;
  User({this.name, this.address, this.about});
}
class Profile1{
  User user;
  int followers, following,friends;

  Profile1({this.user, this.followers, this.following, this.friends});
}
