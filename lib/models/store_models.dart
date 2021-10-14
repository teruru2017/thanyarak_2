class Store {
  String btimg;
  String icon;
  String head;
  String details;
  String dateTime;
  num review;
  List<String> imgs;
  Store(this.btimg, this.icon, this.head, this.details, this.review,
      this.dateTime, this.imgs);
  static List<Store> generateStore() {
    return [
      Store(
          'assets/images/bt1.png',
          'assets/images/sto1.png',
          'เสื้อยืดมูลนิธิถันยรักษ์ ในพระราชูปถัมภ์',
          '222',
          100,
          '12/12/12',
          ['assets/images/t1.jpg', 'assets/images/t2.jpg']),
      Store(
          'assets/images/bt1.png',
          'assets/images/sto1.png',
          'เสื้อยืดมูลนิธิถันยรักษ์ ในพระราชูปถัมภ์',
          '2223',
          100,
          '12/12/12',
          ['assets/images/t1.jpg', 'assets/images/t2.jpg']),
      Store(
          'assets/images/bt1.png',
          'assets/images/sto1.png',
          'เสื้อยืดมูลนิธิถันยรักษ์ ในพระราชูปถัมภ์',
          '22266',
          100,
          '12/12/12',
          ['assets/images/t1.jpg', 'assets/images/t2.jpg']),
      Store(
          'assets/images/bt1.png',
          'assets/images/sto1.png',
          'เสื้อยืดมูลนิธิถันยรักษ์ ในพระราชูปถัมภ์',
          '99',
          100,
          '12/12/12',
          ['assets/images/t1.jpg', 'assets/images/t2.jpg']),
      Store(
          'assets/images/bt1.png',
          'assets/images/sto1.png',
          'เสื้อยืดมูลนิธิถันยรักษ์ ในพระราชูปถัมภ์',
          '45',
          100,
          '12/12/12',
          ['assets/images/t1.jpg', 'assets/images/t2.jpg'])
    ];
  }
}
