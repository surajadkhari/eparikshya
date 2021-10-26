class CarouselModel {
  final String backgroundimage;
  final String title;
  final String subtitle;

  CarouselModel(
      {required this.backgroundimage,
      required this.subtitle,
      required this.title});

  static List<CarouselModel> caro = [
    CarouselModel(
        backgroundimage:
            'http://eparikshya.com/public/frontend/images/slider/s-1.jpg',
        title: 'Choose the Right Theme for Education Title 1',
        subtitle:
            'subtitle  hehdhe sh snbdnsbndb nbnsdb  jhdsjhj sjhdjshjdhjh sjdhj'),
    CarouselModel(
        backgroundimage:
            'http://eparikshya.com/public/frontend/images/slider/s-2.jpg',
        title: 'Choose the Right Theme for Education Second Title 2',
        subtitle: 'subtitle'),
  ];
}
