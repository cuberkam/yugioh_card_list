import 'package:flutter/material.dart';
import 'package:yugioh_card_list/views/widgets/appbar_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "My favourites"),
      body: Center(
        child: Text("Favorits Screen"),
      ),
    );
  }
}
