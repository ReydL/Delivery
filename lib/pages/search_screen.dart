import 'package:delivery/widgets/top_row.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),

            //GridOfRestaurants()
          ],
        ),
      ]),
    );
  }
}

class GridOfRestaurants extends StatelessWidget {
  final List <ElementOfGridRestaurantsData> elements = [
    ElementOfGridRestaurantsData(image: 'assets/images/pizzaPNG.png', nameOfImage: 'Пицца'),
  ];
  GridOfRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisCount: 3,
      mainAxisSpacing: 9,
      crossAxisSpacing: 30,
      children: [
        ...elements.map((data) => ElementOfGridRestaurants(data: data))
      ],
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
          Text(
            data.nameOfImage,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
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
    return SizedBox(
      child: ListTile(
        leading: Icon(
          Icons.search,
          size: 35,
        ),
        title: Text(
          'Ищите в поиске',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Text(
          'Например, свинные ребрышки',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
