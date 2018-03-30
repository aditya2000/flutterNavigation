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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        backgroundColor: Colors.amberAccent,
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
            new Text("Favorites", style: new TextStyle(fontSize: 20.0),),

            new IconButton(
                icon: new Icon(Icons.bookmark, color: Colors.greenAccent,size: 40.0,),
                onPressed: () {Navigator.of(context).pushNamed("/BookmarksPage");}
            ),
            new Text("Bookmarks", style: new TextStyle(fontSize: 20.0),),

            new IconButton(
                icon: new Icon(Icons.chat, color: Colors.redAccent,size: 40.0,),
                onPressed: () {Navigator.of(context).pushNamed("/ChatsPage");}
            ),
            new Text("Chats", style: new TextStyle(fontSize: 20.0),),
          ],
        )
      ),
      )
    );
  }
}



class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Favourites'),
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
                  new Text("Bookmarks", style: new TextStyle(fontSize: 20.0),)
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
          title: new Text('Bookmarks'),
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
                  new Text("Chats", style: new TextStyle(fontSize: 20.0),)
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
          title: new Text('Chats'),
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
                  new Text("Favourites", style: new TextStyle(fontSize: 20.0),)
                ],
              )
          ),
        )
    );
  }

}