class CarouselModel {
  String image;
  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/disc.png"},
  {"image": "assets/images/learn.png"},
  {"image": "assets/images/disc.png"},
  {"image": "assets/images/learn.png"}
];
