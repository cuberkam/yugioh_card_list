import 'dart:async';

import 'package:dio/dio.dart';
import 'package:yugioh_card_list/model/cards.dart';

class RestHelperService {
  Future<List<CardModel>> getCardsData(
      {String? cardName, String? cardType}) async {
    String url =
        "https://db.ygoprodeck.com/api/v7/cardinfo.php?fname=$cardName";

    if (cardType != null) {
      url = "$url&type=$cardType";
    }

    try {
      final dio = Dio();
      final response = await dio.get(url);
      final List cardsJson = response.data["data"];
      final List<CardModel> cards =
          cardsJson.map((e) => CardModel.fromJson(e)).toList();

      return cards;
    } on DioException catch (e) {
      e;
    }
    return Future.value([]);
  }
}
