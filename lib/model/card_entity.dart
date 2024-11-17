import 'package:isar/isar.dart';
import 'package:yugioh_card_list/model/card_model.dart';
part 'card_entity.g.dart';

@collection
class CardEntity {
  Id id = Isar.autoIncrement;
  final int cardId;
  late String name;
  late List<String> typeline;
  late String type;
  late String desc;
  late int level;
  late String attribute;
  late String moreInfo;
  late List<CardImageEntity> cardImages;

  CardEntity({
    required this.cardId,
    required this.name,
    required this.typeline,
    required this.type,
    required this.desc,
    required this.level,
    required this.attribute,
    required this.moreInfo,
    required this.cardImages,
  });

  factory CardEntity.fromModel(CardModel model) {
    return CardEntity(
      cardId: model.id!,
      name: model.name ?? '',
      typeline: List<String>.from(model.typeline ?? []),
      type: model.type ?? '',
      desc: model.desc ?? '',
      level: model.level ?? 0,
      attribute: model.attribute ?? '',
      moreInfo: model.moreInfo ?? '',
      cardImages: model.cardImages
              ?.map((img) => CardImageEntity.fromModel(img))
              .toList() ??
          [],
    );
  }

  static List<CardModel> toModel(List<CardEntity> entities) {
    return entities
        .map((entity) => CardModel(
              id: entity.cardId,
              name: entity.name,
              typeline: entity.typeline,
              type: entity.type,
              desc: entity.desc,
              level: entity.level,
              attribute: entity.attribute,
              moreInfo: entity.moreInfo,
              cardImages: CardImageEntity.toModel(entity.cardImages),
            ))
        .toList();
  }
}

@embedded
class CardImageEntity {
  late String? imageUrl;
  late String? imageUrlSmall;
  late String? imageUrlCropped;

  CardImageEntity({
    this.imageUrl,
    this.imageUrlSmall,
    this.imageUrlCropped,
  });

  factory CardImageEntity.fromModel(CardImages model) {
    return CardImageEntity(
      imageUrl: model.imageUrl ?? '',
      imageUrlSmall: model.imageUrlSmall ?? '',
      imageUrlCropped: model.imageUrlCropped ?? '',
    );
  }

  static List<CardImages> toModel(List<CardImageEntity> images) {
    return images
        .map((image) => CardImages(
              imageUrl: image.imageUrl,
              imageUrlSmall: image.imageUrlSmall,
              imageUrlCropped: image.imageUrlCropped,
            ))
        .toList();
  }
}
