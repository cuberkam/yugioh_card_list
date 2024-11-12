import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_card_list/model/cards.dart';
import 'package:yugioh_card_list/utils/constants.dart';
import 'package:yugioh_card_list/utils/widgets.dart';
import 'package:yugioh_card_list/views/widgets/appbar_widget.dart';

class CardDetailsScreen extends StatefulWidget {
  final CardModel cardModel;

  const CardDetailsScreen({super.key, required this.cardModel});

  @override
  State<CardDetailsScreen> createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _flipAnimation;
  int _currentPage = 0;
  bool isFlipped = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    // AnimationController ve _flipAnimation başlatma
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _flipAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _toggleFlip() {
    setState(() {
      isFlipped = !isFlipped;
    });
    if (isFlipped) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl = widget.cardModel.cardImages!.first.imageUrl!;
    return Scaffold(
      appBar: DefaultAppBar(
        title: widget.cardModel.name!,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            GestureDetector(
              onTap: _toggleFlip,
              child: AnimatedBuilder(
                animation: _flipAnimation,
                builder: (context, child) {
                  final angle = _flipAnimation.value * pi;
                  final isFront = angle < pi / 2;
                  return _buildCardImage(imageUrl, isFront, angle);
                },
              ),
            ),
            const SizedBox(height: 10),
            _buildIndicator(),
            const SizedBox(height: 20),
            _buildCardData(),
          ],
        ),
      ),
    );
  }

  Widget _buildCardImage(String imageUrl, isFront, angle) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.cardModel.cardImages?.length ?? 0,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        itemBuilder: (context, index) {
          String imageUrl = widget.cardModel.cardImages![index].imageUrl!;
          return Transform(
            transform: Matrix4.rotationY(angle),
            alignment: Alignment.center,
            child: isFront
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    placeholder: (context, url) =>
                        FixedCircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.contain,
                  )
                : Transform(
                    transform: Matrix4.rotationY(pi),
                    alignment: Alignment.center,
                    child: _buildCardBack(),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildCardBack() {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Image.asset(
        cardBackImagePath,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildIndicator() {
    int imageCount = widget.cardModel.cardImages?.length ?? 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imageCount, (index) {
        return SizedBox(
          height: 12,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: _currentPage == index ? 12 : 8,
            height: _currentPage == index ? 12 : 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  _currentPage == index ? Colors.amber.shade500 : Colors.grey,
            ),
          ),
        );
      }),
    );
  }

  Widget _buildCardData() {
    return Card(
      color: Colors.amber.shade500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoText("Typeline", widget.cardModel.typeline.toString()),
            _buildInfoText("Type", widget.cardModel.type),
            _buildInfoText("Level", widget.cardModel.level.toString()),
            _buildInfoText("Attribute", widget.cardModel.attribute),
            _buildInfoText("Description", widget.cardModel.desc),
            _buildInfoText("More Info", widget.cardModel.moreInfo),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 18),
          children: [
            TextSpan(
              text: "$label: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value ?? "N/A"),
          ],
        ),
      ),
    );
  }
}
