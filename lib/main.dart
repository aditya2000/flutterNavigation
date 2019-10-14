import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(
    home: new homePage(),
    routes: <String,WidgetBuilder>{
      "/FavouritesPage": (BuildContext context) => new FavouritesPage(),
      "/BookmarksPage": (BuildContext context) => new BookmarksPage(),
      "/ChatsPage" : (BuildContext context) => new ChatsPage()
    }
  ));

}


class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    int _selectedPage= 0;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        backgroundColor: Colors.black,
      ),
      body: new Container(
        child: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            new IconButton(
                 icon: new Icon(Icons.favorite, color: Colors.blueAccent,size: 40.0,),
                onPressed: () {Navigator.of(context).pushNamed("/FavouritesPage");}
            ),
            new Text("Favorites Page", style: new TextStyle(fontSize: 20.0),),

            new IconButton(
                icon: new Icon(Icons.bookmark, color: Colors.greenAccent,size: 40.0,),
                onPressed: () {Navigator.of(context).pushNamed("/BookmarksPage");}
            ),
            new Text("Bookmarks Page", style: new TextStyle(fontSize: 20.0),),

            new IconButton(
                icon: new Icon(Icons.chat, color: Colors.redAccent,size: 40.0,),
                onPressed: () {Navigator.of(context).pushNamed("/ChatsPage");}
            ),
            new Text("Chats Page", style: new TextStyle(fontSize: 20.0),),
          ],
        )
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index){
          _selectedPage=index;
        },
        items: navBarIconsList(),
      ),
    );
  }

  navBarIconsList() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text("Chats")
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          title: Text("Bookmarks")
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Favourites")
      ),
    ];
  }
}



class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Favourites Page'),
          backgroundColor: Colors.blueAccent,
        ),
        body: new Container(
          child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.bookmark, color: Colors.blueAccent,size: 40.0,),
                      onPressed: () {Navigator.of(context).pushNamed("/BookmarksPage");}
                  ),
                  new Text("Bookmarks Page", style: new TextStyle(fontSize: 20.0),)
                ],
              )
          ),
        )
    );
  }

}


class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Bookmarks Page'),
          backgroundColor: Colors.greenAccent,
        ),
        body: new Container(
          child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.chat, color: Colors.greenAccent,size: 40.0,),
                      onPressed: () {Navigator.of(context).pushNamed("/ChatsPage");}
                  ),
                  new Text("Chats Page", style: new TextStyle(fontSize: 20.0),)
                ],
              )
          ),
        )
    );
  }

}


class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Chats Page'),
          backgroundColor: Colors.redAccent,
        ),
        body: new Container(
          child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.favorite, color: Colors.redAccent,size: 40.0,),
                      onPressed: () {Navigator.of(context).pushNamed("/FavouritesPage");}
                  ),
                  new Text("Favourites Page", style: new TextStyle(fontSize: 20.0),)
                ],
              )
          ),
        )
    );
  }

}