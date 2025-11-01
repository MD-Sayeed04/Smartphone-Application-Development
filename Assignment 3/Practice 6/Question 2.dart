class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void display() {
    print('ID: $id, Name: $name, Price: \$${price}');
  }
}

void main() {
  House h1 = House(1, 'Lake View Villa', 250000);
  House h2 = House(2, 'City Apartment', 150000);
  House h3 = House(3, 'Mountain Cabin', 200000);

  List<House> houses = [h1, h2, h3];

  for (var house in houses) {
    house.display();
  }
}
