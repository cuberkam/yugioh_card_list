import 'package:flutter/material.dart';
import 'package:yugioh_card_list/model/cards.dart';
import 'package:yugioh_card_list/services/rest_helper.dart';
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
                      child: ListView.builder(
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
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10)),
                              child:
                                  Text("${cardModel.id} = ${cardModel.name}"),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
