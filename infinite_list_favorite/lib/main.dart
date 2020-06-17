import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Infinite list with favorite list ',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: RandomWordsPair(),
          );
        }
      
      }
      
      class RandomWordsPair extends StatefulWidget{
        @override
        RandomPairWordsState createState()=>RandomPairWordsState();
}

class RandomPairWordsState extends State<RandomWordsPair>{

  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18.0);


  @override
  Widget build(Object context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Up Name Generator'),
        actions: <Widget>[IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)],
              ),
              body: _buildSuggestions()
                          );
                        }
                      
                      
                        void _pushSaved() {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(builder:(BuildContext context){
                              final tiles=_saved.map((WordPair pair){
                                return ListTile(
                                  title: Text(
                                    pair.asPascalCase,
                                    style: _biggerFont,
                                  )
              
                                );
              
                              },);
                              final divided=ListTile.divideTiles(tiles: tiles,context: context).toList();
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text('Saved Suggestions'),
                                ),
                                body: ListView(children: divided),
                              );
                            })
                          );
              
                }
              
               Widget _buildSuggestions() {
                 return ListView.builder(
                   padding: const EdgeInsets.all(18),
                   itemBuilder: (context,i)
                   {
                     if(i.isOdd)
                     return Divider();
                     final index=i~/2;
                     if(index>=_suggestions.length)
                     {
                       _suggestions.addAll(generateWordPairs().take(10));
                     }
                     return _buildRow(_suggestions[index]);
                                        }
                                        );
                     
                                     }
                     
                       Widget _buildRow(WordPair pair) {
                          final bool alreadySaved=_saved.contains(pair);
                          return ListTile(
                            title: Text(
                              pair.asPascalCase,
                              style: _biggerFont,
                            ),
                            trailing: Icon(
                              alreadySaved ? Icons.favorite : Icons.favorite_border,
                              color : alreadySaved ? Colors.red : null
                            ),
                            onTap: (){
                              setState(() {
                                if(alreadySaved)
                                {
                                  _saved.remove(pair);
                                }else{
                                  _saved.add(pair);
                                }
                              });
                            },
                          );
                       }
}
