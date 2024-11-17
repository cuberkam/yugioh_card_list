import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:yugioh_card_list/model/card_model.dart';
import 'package:yugioh_card_list/utils/constants.dart';
import 'package:yugioh_card_list/views/screens/cards_screen.dart';
import 'package:yugioh_card_list/views/screens/favorites_screen.dart';
import 'package:yugioh_card_list/views/widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  String? _selectedCardType;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "",
        isVisibleFavorite: false,
        cardModel: CardModel(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              _searchTextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _cardTypeDropdownList(),
                  IconButton(
                      onPressed: () {
                        _selectedCardType = null;
                        setState(() {});
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardsScreen(
                                searchName: _searchController.text,
                                cardType: _selectedCardType,
                              )));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade600),
                child: Text(
                  'Search',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF2E2831)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Divider(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoritesScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade600),
                child: Text(
                  'My Favorites',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF2E2831)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownButton<String> _cardTypeDropdownList() {
    return DropdownButton<String>(
      value: _selectedCardType,
      hint: Text(
        "Select Card Type",
        style: TextStyle(color: Colors.grey, fontSize: 18),
        textAlign: TextAlign.end,
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedCardType = newValue!;
        });
      },
      items: cardTypes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }

  TextField _searchTextField() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Search by Name",
        prefixIcon: Icon(Icons.search),
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
