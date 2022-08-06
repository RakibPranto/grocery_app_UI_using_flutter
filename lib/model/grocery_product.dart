class Grocery {
  String? name, img, price;
  double? quantity;

  Grocery({this.name, this.img, this.price, this.quantity});

  static List<Grocery> itemList() {
    return [
      Grocery(
          img: 'assets/images/rice.jpg',
          name: 'Rice',
          price: '120',
          quantity: 2),
      Grocery(
          img: 'assets/images/onions.jpg',
          name: 'Onions',
          price: '44',
          quantity: 1),
      Grocery(
          img: 'assets/images/oil.jpg', name: 'Oil', price: '900', quantity: 5),
      Grocery(
          img: 'assets/images/meats.jpg',
          name: 'Meats',
          price: '880',
          quantity: 3),
      Grocery(
          img: 'assets/images/lentils.jpg',
          name: 'Lentils',
          price: '120',
          quantity: 0.2),
      Grocery(
          img: 'assets/images/juces.jpg',
          name: 'Juces',
          price: '300',
          quantity: 23),
      Grocery(
          img: 'assets/images/fruits.jpg',
          name: 'Fruits',
          price: '140',
          quantity: 20),
      Grocery(
          img: 'assets/images/baverage.jpg',
          name: 'Drinks',
          price: '100',
          quantity: 10),
    ];
  }
}
