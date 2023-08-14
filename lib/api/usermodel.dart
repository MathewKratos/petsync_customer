
class UserModel{
  final UserDetail name;
  final String gender;
  final LocationDetail location;
  final String email;
  final PictureDetail picture;

  UserModel({required this.name,required this.gender,required this.location,required this.email, required this.picture});

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(name: UserDetail.fromjson(json['name']), gender: json['gender'], location: LocationDetail.fromjson(json['location']), email: json['email'],
        picture: PictureDetail.fromjson(json['picture']));
  }
}

class PictureDetail {
  final String large;
  final String medium;
  final String thumbnail;

  PictureDetail({required this.large,required this.medium,required this.thumbnail});


  factory PictureDetail.fromjson(Map<String, dynamic> json) {
    return PictureDetail(large: json['large'], medium: json['medium'], thumbnail: json['thumbnail']);
  }
}

class UserDetail {
  final String title;
  final String first;
  final String last;


  UserDetail({required this.title,required this.first,required this.last,});

  factory UserDetail.fromjson(Map<String, dynamic> json){
    return UserDetail(title: json['title'], first: json['first'], last: json['last'], );
  }
}

class LocationDetail {
  final String city;
  final String state;
  final int postcode;
  final StreetDetails street;

  LocationDetail({required this.street, required this.city, required this.state, required this.postcode});

  factory LocationDetail.fromjson(Map<String, dynamic>json) {
    return LocationDetail(
        city: json['city'],
        state: json['state'],
        postcode: json['postcode'],
        street: StreetDetails.fromjson(json['street']));
  }

}

class StreetDetails {
  final int number;
  final String name;

  StreetDetails({required this.number,required this.name});

  factory StreetDetails.fromjson(Map<String, dynamic>json) {
    return StreetDetails(number: json['number'], name: json['name']);
  }

}