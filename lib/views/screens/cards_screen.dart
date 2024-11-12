import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_card_list/model/cards.dart';
import 'package:yugioh_card_list/services/rest_helper.dart';
import 'package:yugioh_card_list/utils/widgets.dart';
import 'package:yugioh_card_list/views/screens/card_details_screen.dart';
import 'package:yugioh_card_list/views/widgets/appbar_widget.dart';

class CardsScreen extends StatefulWidget {
  final String searchName;
  final String? cardType;
  const CardsScreen({super.key, required this.searchName, this.cardType});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  Future<List<CardModel>> _getCardsData() async {
    return await RestHelperService()
        .getCardsData(cardName: widget.searchName, cardType: widget.cardType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "",
      ),
      body: FutureBuilder<List<CardModel>>(
          future: _getCardsData(),
          builder: (context, AsyncSnapshot<List<CardModel>> snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "results for ${widget.searchName}, ${widget.cardType ?? ""}",
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: snapshot.data.toString() != "[]"
                          ? _cardList(snapshot)
                          : Center(
                              child: Text("There is no result!",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25))),
                    ),
                  ],
                ),
              );
            } else {
              return FixedCircularProgressIndicator();
            }
          }),
    );
  }

  ListView _cardList(AsyncSnapshot<List<CardModel>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data!.length,
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
          child: _cardListItem(cardModel),
        );
      },
    );
  }

  Container _cardListItem(CardModel cardModel) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.amber.shade500,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: CachedNetworkImage(
              imageUrl: cardModel.cardImages!.first.imageUrlCropped!,
              imageBuilder: (context, imageProvider) => Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.fill),
                ),
              ),
              placeholder: (context, url) => FixedCircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                cardModel.name!,
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
