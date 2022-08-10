class CarModel {
  CarModel(
      {required this.name,
      required this.description,
      required this.image,
      required this.isFavorite});
  static List<CarModel> dummyCars(){
    return [
      CarModel(
        name: 'Bufori',
        description: 'Bufori is a brand of hand-built automobiles inspired by American 1930s coupes. ',
        isFavorite: true,
        image: 'assets/car_1.png'
      ),
      CarModel(
          name: '1950s Thunderbird',
          description: 'The first generation of the Ford Thunderbird is a two-seat convertible',
          isFavorite: false,
          image: 'assets/car_2.png'
      )
    ];
  }
  String image;
  String name;
  bool isFavorite;
  String description;
}
