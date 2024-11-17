import 'package:flutter/material.dart';
import 'package:yugioh_card_list/model/card_model.dart';
import 'package:yugioh_card_list/services/database_service.dart';

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool isVisibleFavorite;
  final CardModel cardModel;

  const DefaultAppBar(
      {super.key,
      required this.title,
      required this.isVisibleFavorite,
      required this.cardModel});

  @override
  State<DefaultAppBar> createState() => _DefaultAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _DefaultAppBarState extends State<DefaultAppBar> {
  bool isIconToggled = false;

  Future<void> _isCardFavorited() async {
    bool isFavorited = widget.cardModel.id != null
        ? await DatabaseService.isCardFavorited(widget.cardModel.id!)
        : false;
    setState(() {
      isIconToggled = isFavorited;
    });
  }

  @override
  void initState() {
    super.initState();
    _isCardFavorited();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(widget.title)),
      actions: [
        IconButton(
            onPressed: () {
              if (widget.isVisibleFavorite) {
                if (isIconToggled) {
                  DatabaseService.deleteCardToFavorites(widget.cardModel.id!);
                  isIconToggled = false;
                } else {
                  DatabaseService.addCardToFavorites(widget.cardModel);
                  isIconToggled = true;
                }
                setState(() {});
              }
            },
            icon: Icon(
              isIconToggled ? Icons.favorite : Icons.favorite_border,
              color: widget.isVisibleFavorite ? Colors.red : Colors.transparent,
            ))
      ],
    );
  }
}
