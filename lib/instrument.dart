import 'package:flutter/material.dart';

class Instrument extends StatefulWidget{
  const Instrument({Key? key}) : super(key: key);

  @override
  State createState() => InstrumentWindow();

}

class InstrumentWindow extends State<Instrument>{

  var instruments=["Voice", "Guitar", "Drums", "Piano", "Bass", ];
  String instrument = "Voice";
  final playedNotes = <String>[];
  var playedNotesString = " ";
  var bpm = 90;

  int getBpm(){return bpm;}

  List<String> getNotes(){return playedNotes;}


  void raiseBpm(){
    setState(() {
      bpm++;
    });
  }
  void lowerBpm(){
    setState(() {
      bpm--;
    });
  }
  var addingNote="Z";
  void addNote(note){
    setState(() {
      playedNotes.add(note);
      playedNotesString = playedNotes.toString();
    });
  }

  void clear_notes(){
    setState(() {
      playedNotes.clear();
      playedNotesString = " ";
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
          width: 2,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child:  Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child : Row(
                  children: <Widget>[
                    DropdownButton(
                      value: instrument,
                      items: instruments.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          instrument = newValue!;
                        });
                      },
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: lowerBpm,
                            color: Colors.red,
                            child: Text("-"),
                            shape: CircleBorder(),
                            minWidth: 5.0,
                          ),
                          Text(
                            "BPM: $bpm",
                          ),
                          MaterialButton(
                            onPressed: raiseBpm,
                            color: Colors.red,
                            child: Text("+"),
                            shape: CircleBorder(),
                            minWidth: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: MaterialButton(
                  onPressed: clear_notes,
                  child: Text("Clear"),
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(playedNotes.toString()),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){addNote("A");},
                  color: Colors.yellowAccent,
                  child: Text("A"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
                MaterialButton(
                  onPressed: (){addNote("B");},
                  color: Colors.yellowAccent,
                  child: Text("B"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
                MaterialButton(
                  onPressed: (){addNote("C");},
                  color: Colors.yellowAccent,
                  child: Text("C"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
                MaterialButton(
                  onPressed: (){addNote("D");},
                  color: Colors.yellowAccent,
                  child: Text("D"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
                MaterialButton(
                  onPressed: (){addNote("E");},
                  color: Colors.yellowAccent,
                  child: Text("E"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
                MaterialButton(
                  onPressed: (){addNote("F");},
                  color: Colors.yellowAccent,
                  child: Text("F"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
                MaterialButton(
                  onPressed: (){addNote("G");},
                  color: Colors.yellowAccent,
                  child: Text("G"),
                  shape: CircleBorder(),
                  minWidth: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}