import 'package:college_project/components/horizontal%20listview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:college_project/components/horizontal listview.dart';
import 'package:college_project/components/products_gridView.dart';
class Homepage extends StatefulWidget {
  const Homepage({key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= new Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/images/image/541683171sst1645936488.jpg'),
            AssetImage('assets/images/image/786067780sst1645936493.jpg'),
            AssetImage('assets/images/image/644839809sst1645936495.jpg'),
            AssetImage('assets/images/image/638475912sst1645936490.jpg'),
            AssetImage('assets/images/image/m1.jpeg'),
            AssetImage('assets/images/image/960881636sst1645937116.jpg'),
            AssetImage('assets/images/image/134606826sst1645936945.jpg'),
            AssetImage('assets/images/image/c1.jpg'),
            AssetImage('assets/images/image/m2.jpg'),
            AssetImage('assets/images/image/980186263sst1645936491.jpg'),
            AssetImage('assets/images/image/848833309sst1645936480.jpg')
          ],
          autoplay: false,
          // animationCurve: Curves.fastOutSlowIn,
          // animationDuration: Duration(milliseconds: 10000),
          dotSize: 4.5,
          dotColor: Colors.white,
          indicatorBgPadding: 5.5,


        )
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        centerTitle: false,
        title: Text("Shopify"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){}),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Athul krishna"),
              accountEmail: Text("athul@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.blue
              ),
            ),
//header begins
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Homepage"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Catagories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings,
                  color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help,
                  color: Colors.blue,),
              ),
            ),
          ],
        ),

      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          // here ended the front scrolling type// that is photos and that addded to the pubsec.yaml
          //image carosel begins from here...
          Padding(padding: const EdgeInsets.all(12.0),
          child: Text('Categories'),
          ),
        //  horizontal Listview starts from here
         Horizontalview(),
          
          Padding(padding: const EdgeInsets.all(12.0),
          child: new Text("Recent Products"),),

        //  Gridview begins from here....
          Container(
            height: 320.0,
            child: Products(),
          )
          


        ],
      ),
    );



  }
}
