import 'package:flutter/material.dart';
import 'package:yugioh_card_list/model/cards.dart';
import 'package:yugioh_card_list/views/widgets/appbar_widget.dart';

class CardDetailsScreen extends StatelessWidget {
  final CardModel cardModel;
  const CardDetailsScreen({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    String image = cardModel.cardImages!.first.imageUrl!;
    return Scaffold(
        appBar: DefaultAppBar(
          title: cardModel.name!,
        ),
        body: Center(
          child: Column(children: [
            Flexible(
                child: Image.network(image, loadingBuilder:
                    (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            })),
            Text("Card Level: ${cardModel.level}"),
            Text(
              "Card Name: ${cardModel.name}",
            ),
            Text("Card Typeline: ${cardModel.typeline}"),
            Text("Card Type: ${cardModel.type}"),
            Text("Card Attribute: ${cardModel.attribute}"),
            Text("More Info: ${cardModel.moreInfo}"),
          ]),
        ));
  }
}
