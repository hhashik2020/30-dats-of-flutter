class CatalogModel {
  static final items = [
    Item(
    id: 1,
    name: "I Phone 12",
    price: 999,
    color: "#335051",
    image:"https://www.google.com/imgres?imgurl=https%3A%2F%2Fi1.wp.com%2Fmaplestore.in%2Fwp-content%2Fuploads%2F2020%2F10%2FiPhone_12_Lineup_Screen__WWEN.jpg%3Ffit%3D2048%252C2048%26ssl%3D1&imgrefurl=https%3A%2F%2Fmaplestore.in%2Fshop%2Fiphone-12%2F&tbnid=B5otXYhjBZimPM&vet=12ahUKEwiCp9DsibryAhVcxXMBHXYtBNUQMygLegUIARDPAQ..i&docid=7RZODXelPFXp6M&w=2048&h=2048&q=iphone12&client=firefox-b-d&ved=2ahUKEwiCp9DsibryAhVcxXMBHXYtBNUQMygLegUIARDPAQ"
 

    )
  ];
}

class Item {
  final int id;
  final String name;
  final String dsec;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.dsec, this.price, this.color, this.image});
}
