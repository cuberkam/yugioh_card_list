import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yugioh_card_list/model/card_entity.dart';
import 'package:yugioh_card_list/model/card_model.dart';

class DatabaseService {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([CardEntitySchema], directory: dir.path);
  }

  static Future<bool> isCardFavorited(int cardId) async {
    final CardEntity? card =
        await isar.cardEntitys.filter().cardIdEqualTo(cardId).findFirst();
    return card != null ? true : false;
  }

  static Future<CardEntity?> getACardEntity(int cardId) async {
    return await isar.cardEntitys.filter().cardIdEqualTo(cardId).findFirst();
  }

  static Future<List<CardModel>> getAllCardModel() async {
    return CardEntity.toModel(await isar.cardEntitys.where().findAll());
  }

  static Future<void> addCardToFavorites(CardModel cardModel) async {
    final CardEntity newCardEntity = CardEntity.fromModel(cardModel);
    await isar.writeTxn(() => isar.cardEntitys.put(newCardEntity));
    await getAllCardModel();
  }

  static Future<void> deleteCardToFavorites(int cardId) async {
    CardEntity? cardEntity = await getACardEntity(cardId);

    if (cardEntity != null) {
      await isar.writeTxn(() => isar.cardEntitys.delete(cardEntity.id));
      await getAllCardModel();
    }
  }
}
