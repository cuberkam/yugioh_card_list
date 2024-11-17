import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_card_list/model/card_model.dart';
import 'package:yugioh_card_list/services/database_service.dart';
import 'package:yugioh_card_list/utils/widgets.dart';
import 'package:yugioh_card_list/views/screens/card_details_screen.dart';
import 'package:yugioh_card_list/views/widgets/appbar_widget.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  Future<List<CardModel>> _getCardsData() async {
    return await DatabaseService.getAllCardModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
          title: "My favourites",
          isVisibleFavorite: false,
          cardModel: CardModel(),
        ),
        body: FutureBuilder<List<CardModel>>(
            future: _getCardsData(),
            builder: (context, AsyncSnapshot<List<CardModel>> snapshot) {
              if (snapshot.hasData) {
                return Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 3 / 4.35,
                        ),
                        itemBuilder: (context, index) {
                          final CardModel cardModel = snapshot.data![index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CardDetailsScreen(
                                            cardModel: cardModel,
                                          )));
                            },
                            child: _cardGridItem(cardModel),
                          );
                        }));
              } else {
                return FixedCircularProgressIndicator();
              }
            }));
  }

  CachedNetworkImage _cardGridItem(CardModel cardModel) {
    return CachedNetworkImage(
      imageUrl: cardModel.cardImages!.first.imageUrlSmall!,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.contain),
        ),
      ),
      placeholder: (context, url) => FixedCircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
