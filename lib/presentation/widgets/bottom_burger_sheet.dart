import 'package:flutter/material.dart';

class BuildBurgerBottomSheet extends StatefulWidget {



  @override
  _BuildBurgerBottomSheetState createState() => _BuildBurgerBottomSheetState();
}

class _BuildBurgerBottomSheetState extends State<BuildBurgerBottomSheet> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 57,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 15),

                alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black12,width: 1),
                ),
                child: IconButton(
                  icon: Icon(Icons.add,),
                  onPressed: (){},
                ),
              ),
              Text('3'),
              Container(
                margin: EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 15),

                alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black12,width: 1),
                ),
                child: IconButton(
                  icon: Icon(Icons.remove,),
                  onPressed: (){},
                ),
              ),
              Expanded(child: SizedBox()),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: theme.primaryColor,
                    onPrimary: theme.backgroundColor,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onPressed: (){},
                child: Text('Добавить'),
              ),

            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 179,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle.png'),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Воппер',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text('Мягкая булочка и мясо в сочнейшем соке помидор и базилика. Приготовлено по рецепту шефа Джима.',
                  softWrap: true,
                  style: TextStyle(fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                  ),),
                SizedBox(height: 10,),
                Text('Добавьте или уберите ингридиенты', style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),),
                SizedBox(height: 10,),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: value,
                  onChanged: (value) => setState(()=>this.value = value!),
                  title: Text('Кетчуп + 27 Р', style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),),

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
