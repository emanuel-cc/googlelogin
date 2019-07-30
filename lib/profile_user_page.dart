import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProfileUserPage extends StatefulWidget {
  ProfileUserPage({Key key}) : super(key: key);

  _ProfileUserPageState createState() => _ProfileUserPageState();
}

class _ProfileUserPageState extends State<ProfileUserPage> {
  @override
  Widget build(BuildContext context) {
    
    //final bloc = Provider.of(context);

    return Scaffold(
      /*appBar: AppBar(
         centerTitle: false,
         title: Text('Profile',style: TextStyle(fontSize: 30.0),),
       ),*/
      body: Stack(children: <Widget>[
        Container(
          width: 420.0,
          height: 430.0,
          child: Image.asset(
            'assets/images/appbarprofile.png',
            fit: BoxFit.cover,
          ),
          //color: Colors.green,
        ),

        Positioned(
          top: 64.0,
          left: 28.0,
          child: Container(
            height: 160.0,
            child: Text('Profile',
                style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.bold)),
            //color: Colors.brown,
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 50.0,
                      backgroundImage: NetworkImage(
                          'https://img-cdn.hipertextual.com/files/2019/04/hipertextual-avengers-endgame-contiene-ultimo-cameo-stan-lee-2019632812.jpg?strip=all&lossy=1&quality=65&resize=740%2C490&ssl=1'),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nombre completo: ',textDirection: TextDirection.ltr ,style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('Correo: ',textAlign: TextAlign.left,style: TextStyle(color: Colors.white24),)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        iconSize: 20.0,
                        icon: Icon(Icons.bookmark_border),
                        tooltip: 'Tocar',
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        iconSize: 20.0,
                        icon: Icon(Icons.card_travel),
                        tooltip: 'Tocar',
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      maxRadius: 30.0,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        iconSize: 40.0,
                        icon: Icon(Icons.add),
                        tooltip: 'Tocar',
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        iconSize: 20.0,
                        icon: Icon(Icons.email),
                        tooltip: 'Tocar',
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        iconSize: 20.0,
                        icon: Icon(Icons.person),
                        tooltip: 'Tocar',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: ListView(
                  //shrinkWrap: false,
                  //itemBuilder: (context,index){
                  //Column(
                  children: <Widget>[
                    _card(),
                    _card2(),
                    _card3(),
                    _card4(),
                    _card5(),
                    _card6(),
                    _card7(),
                    _card8(),
                    SizedBox()
                  ],
                  //),
                  //},
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget _card() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/beach.jpeg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 100),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card2() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/beach_palm.jpeg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card3() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/mountain_stars.jpeg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card4() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/mountain.jpeg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card5() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/river.jpeg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card6() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/sisal-01.jpg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card7() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/sunset.jpeg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _card8() {
    final card = Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          /*ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset('assets/images/beach.jpeg',width: 370.0,height: 350.0,)
              //Image.network('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg')
              ),*/
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: 370.0,
              height: 270.0,
              image: AssetImage('assets/images/travelguy.jpg'),
              //NetworkImage('https://www.tiendacanon.com.mx/wcsstore/CMEXCatalogAssetStore/01_academy_tienda_xl_paisaje_noviembre.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 300.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
    return Column(
      children: <Widget>[
        Container(
          height: 370.0,
          /*decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                //offset: Offset(2.0, 40.0)
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),*/
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              card,
              Positioned(
                top: 190.0,
                left: 28.0,
                child: Container(
                  child: _cardTipo1(),
                ),
              ),
              Positioned(
                  top: 300.0,
                  left: 270.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.lightGreen[300],
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _cardTipo1() {
    // Retorna una tarjeta
    return Container(
      //padding: EdgeInsets.only(top: 0.0),
      //alignment: Alignment(0.0, 130.0),
      width: 330.0,
      child: Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Snuckles Montains Range',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Hiking. Water fall hunting. Natural bath. Scenery & Photography',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Steps 123,123,123',
                style: TextStyle(
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
