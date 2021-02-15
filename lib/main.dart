import "package:flutter/material.dart";
import "package:flutter/rendering.dart" show debugPaintSizeEnabled;
/*
void main() => {
  debugPaintSizeEnabled = true
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Quiz App',
      theme: ThemeData(
        primarySwatch:Colors.indigo,
        textTheme:GoogleFonts.openSansCondensedTextTheme(
          Theme.of(context).textTheme,
        )

        /*
        TextTheme(
          caption:TextStyle(
            fontSize:22.0, color:Colors.white
          ),

        
        ),
        
        fontFamily:'Georgia'
      */
      ),
      home:MyContainer(),
    );
  }
}
*/
Run|Debug
main() => runApp(MyApp);
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children:<Widget>[
        Container(
          child:IconButton(
            icon: (_isFavourited ? Icon(Icons.favourite) : Icon(Icons.favourite_border)),
            onPressed: _toggleFavourite,
            color:Colors.red[500],
          ),
          SizedBox(
              width:40,
              child:Container(
              child:Text("${_favoutriteCount}")
            )
          )
        ),
      ],
      
    );
  }
  void _toggleFavourite(){
    setState((){
      if(_isFavourited){
        _isFavourited = false;
        _favoutriteCount -= 1;
      }else {
        _isFavourited = true;
        _favoutriteCount += 1;
      }
    });
  }
}

class _FavouriteWidgetState extends State<FavouriteWidget>{
  bool _isFavourited = false;
  int _favoutriteCount=87654;

  @override
  Widget build(BuildContext context){
    return Text(
        '123'
    );
  } 
}

class PersonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text(
          'Япония старшая некома'
        ),
        body:Container(
          child:_buiildMainColumn()
        ),
      );
  }
  Widget _buildMainColumn() => ListView(
    children: [
      _buildTopImage(),
      Center(child: Container(
        padding:const EdgeInsets.only(left:20, right:20),
        child:Column(
          children: <Widget>[
            Container(
              margin:const EdgeInsets.all(5),
              child:Text('рейтинг'),
              child:_buildRaiting()
            ),
            Card(
              margin:const EdgeInsets.all(5),
              elevation:5,
              child:Container(
                padding:const EdgeInsets.all(10),
                child:buildAction(),

              ),
            ),
            Container(
              margin:const EdgeInsets.all(5),
              child:buildDesc(),
            ),
          ],
        ),
      ),
      ),
    ],
  );
  Widget _buildTopImage() => Container(
    child:Card(
      margin:const EdgeInsets.only(left: 20, right:20, top:20),
      elevation:5,
      child:Image.asset('assets/images/Kuro2.jpg', fit:BoxFit.cover),
    )
  );
  Widget _buildRating() => ListTile(
    title:Text(
      'курро тецура',
      style: TextStyle(
        fontWeight:FontWeight.w500
      ),
    ),
    subtitle: Text( 'Япония старшая некома'),
    trailing:Row(
      mainAxisSize:MainAxisSize.min,
      children:<Widget>[
        FavouriteWidget()
      ],
    ),
  );
  Widget _buildAction(String label, IconData icon, Color color) => Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: <Widget>[
       _buildButton('Блокирующий', Icons.star, Colors.black),
      _buildButton('рост 188см', Icons.radio_button_checked, Colors.black),
      _buildButton('Возраст 18', Icons.school, Colors.black),
    ],
  );
  Widget _buildButton() => Column(
    children: <Widget>[
      Icon(icon, color:Colors.black),
      Container(
        child:Text(
          label,
          style:TextStyle(
            fontWeight:FontWeight.w400,
            color:color
          ),
        ),
      ),
  );
  Widget buildDesc() => Text(
    "",
    softWrap: true,
    style:TextStyle(
      fontSize:18.0,
    )
  );
}
