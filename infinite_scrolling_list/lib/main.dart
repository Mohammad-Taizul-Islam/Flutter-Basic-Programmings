import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Infinite scrolling list',
      home: Scaffold(
        appBar:AppBar(
          title: Text('Infinite scrolling list'),
        ),
        body: Center(
          child: RandomWordPairs(),
        ),
      )
    );
  }

}

class RandomWordPairs extends StatefulWidget{
  @override
  RandomWordPairState createState() => RandomWordPairState();

}



class RandomWordPairState extends State<RandomWordPairs>
{
  final WordPair wordPair=WordPair.random();
  final List<WordPair> _suggestions=<WordPair>[];
  final TextStyle _biggerFont=const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildSuggestions();
      }
    
      Widget _buildSuggestions() {
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemBuilder: (BuildContext _context,int i){
                if(i.isOdd)
                {
                  return Divider();
                }
                final int index=i~/2;
                if(index>=_suggestions.length)
                {
                 _suggestions.addAll(generateWordPairs().take(10));
                }
                return _buildRow(_suggestions[index]);
                          });
                      }
                
                  Widget _buildRow(WordPair pair) {
                    return ListTile(
                      title: Text(
                        pair.asPascalCase,
                        style: _biggerFont,
                      ),
                    );
                  }
  
}