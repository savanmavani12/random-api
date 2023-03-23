class RandomData {

  final String gender;
  final String name;
  final String name2;
  final String name3;
  final String city;
  final String street;
  final String state;
  final String country;
  final int post;
  final String description;
  final String email;
  final int age;
  final String image;

  RandomData({required this.name,
    required this.name2,
    required this.name3,
    required this.country,
    required this.street,
    required this.city,
    required this.age,
    required this.state,
    required this.email,
    required this.gender,
    required this.description,
    required this.post,
    required this.image,
  });

  factory RandomData.fromMap({required Map data}) {
    return RandomData(name: data["results"][0]["name"]["title"],
      name2: data["results"][0]["name"]["first"],
      name3: data["results"][0]["name"]["last"],
      street: data["results"][0]["location"]["street"]["name"],
      city: data["results"][0]["location"]["city"],
      age: data["results"][0]["dob"]["age"],
      state: data["results"][0]["location"]["state"],
      country: data["results"][0]["location"]["country"],
      email: data["results"][0]["email"],
      gender: data["results"][0]["gender"],
      description: data["results"][0]["location"]["timezone"]["description"],
      post: data["results"][0]["location"]["postcode"],
      image: data["results"][0]["picture"]["large"],
    );
  }
}