class CardModel {
  int? id;
  String? name;
  List<dynamic>? typeline;
  String? type;
  String? desc;
  int? level;
  String? attribute;
  String? moreInfo;
  List<CardImages>? cardImages;

  CardModel(
      {this.id,
      this.name,
      this.typeline,
      this.type,
      this.desc,
      this.level,
      this.attribute,
      this.moreInfo,
      this.cardImages});

  CardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    typeline = json['typeline'] ?? [];
    type = json['type'];
    desc = json['desc'];
    level = json['level'] ?? 0;
    attribute = json['attribute'];
    moreInfo = json['ygoprodeck_url'];
    cardImages = <CardImages>[];
    json['card_images'].forEach((v) {
      cardImages!.add(CardImages.fromJson(v));
    });
  }
}

class CardImages {
  int? id;
  String? imageUrl;
  String? imageUrlSmall;
  String? imageUrlCropped;

  CardImages(
      {this.id, this.imageUrl, this.imageUrlSmall, this.imageUrlCropped});

  CardImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image_url'];
    imageUrlSmall = json['image_url_small'];
    imageUrlCropped = json['image_url_cropped'];
  }
}
