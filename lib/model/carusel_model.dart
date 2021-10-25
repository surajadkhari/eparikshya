class Carousel {
  final String backgroundimage;
  final String title;
  final String subtitle;

  Carousel(
      {required this.backgroundimage,
      required this.subtitle,
      required this.title});

  List<Carousel> caro = [
    Carousel(
        backgroundimage:
            'http://eparikshya.com/public/frontend/images/slider/s-1.jpg',
        title: 'Choose the Right Theme for Education',
        subtitle: 'subtitle'),
        Carousel(
        backgroundimage:
            'http://eparikshya.com/public/frontend/images/slider/s-1.jpg',
        title: 'Choose the Right Theme for Education',
        subtitle: 'subtitle'),
  ];
}
