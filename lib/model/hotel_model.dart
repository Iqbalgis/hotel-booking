import 'package:new_one/model/name_model.dart';

// NameS
final Name bed = Name(
  id: 1,
  name: 'Two Bed',
  imageUrl: 'assets/bed.png',
);
final Name ac = Name(
  id: 2,
  name: 'AC',
  imageUrl: 'assets/ac.png',
);
final Name makan = Name(
  id: 3,
  name: 'Breakfast',
  imageUrl: 'assets/makan.png',
);
final Name pool = Name(
  id: 4,
  name: 'Pool',
  imageUrl: 'assets/pool.png',
);
final Name wifi = Name(
  id: 5,
  name: 'Wifi',
  imageUrl: 'assets/wifi.png',
);

//RatingS

final Rating rating1 = Rating(
  id: 1,
  imageUrl: 'assets/pic1.jpeg',
);
final Rating rating2 = Rating(
  id: 2,
  imageUrl: 'assets/pic2.jpeg',
);
final Rating rating3 = Rating(
  id: 3,
  imageUrl: 'assets/pic3.jpeg',
);
final Rating rating4 = Rating(
  id: 4,
  imageUrl: 'assets/pic4.jpeg',
);
final Rating rating5 = Rating(
  id: 5,
  imageUrl: 'assets/pic5.jpeg',
);

// FAVORITE CONTACTS
List<Name> fasilitas = [bed, ac, makan, pool, wifi];

// Ratings
List<Rating> ratings = [rating1, rating2, rating3, rating4, rating5];
