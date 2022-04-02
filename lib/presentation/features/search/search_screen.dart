
import 'package:flutter/material.dart';

import '../../widgets/top_row.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: TopRow(),
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 37,
            ),
            RowOfSearch(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Популярный выбор',
              style:  theme.textTheme.headline5,
            ),
            GridOfRestaurants()
          ],
        ),
      ]),
    );
  }
}

class GridOfRestaurants extends StatelessWidget {
  final List <ElementOfGridRestaurantsData> elements = [
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
  ];
  GridOfRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: Wrap(
        spacing: 30,
        runSpacing: 10,
        children: [
          ...elements.map((data) => ElementOfGridRestaurants(data: data))
        ],
      ),
    );
  }
}
class ElementOfGridRestaurantsData {
  final String image;
  final String nameOfImage;

  ElementOfGridRestaurantsData({required this.image,required this.nameOfImage});
}
class ElementOfGridRestaurants extends StatelessWidget{

  final ElementOfGridRestaurantsData data;
  const ElementOfGridRestaurants({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: 86,
            width: 86,
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text(
            data.nameOfImage,
            style: theme.textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}

class RowOfSearch extends StatelessWidget {
  const RowOfSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      child: ListTile(
        leading: Icon(
          Icons.search,
          size: 35,
          color: theme.primaryColor,
        ),
        title: Text(
          'Ищите в поиске',
          style: theme.textTheme.subtitle1,
        ),
        subtitle: Text(
          'Например, свинные ребрышки',
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
