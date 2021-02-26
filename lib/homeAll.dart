import 'package:masonry_grid/masonry_grid.dart';
import 'imageCards.dart';
import 'package:flutter/material.dart';

List<ImageCard> itemCards = [
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress1.jpg"),
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress2.jpg"),
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress3.jpg"),
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress4.jpg"),
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress5.jpg"),
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress6.jpg"),
  ImageCard(
      price: 120,
      loves: "2.3k",
      views: "2.3k",
      image: "assets/images/dress7.jpg"),
];


class HomeAll extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10, top: 10, right: 10, bottom: 0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: <Widget>[
                MasonryGrid(
                    column: 2,
                    crossAxisSpacing: 10,
                    children: List.generate(
                      itemCards.length,
                          (i) => (itemCards[i]),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

}