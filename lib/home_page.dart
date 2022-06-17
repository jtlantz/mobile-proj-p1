import 'package:flutter/material.dart';
import 'package:p1/instrument.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  // var instruments=["Guitar", "Drums", "Piano", "Bass",];
  // String instrument = "Guitar";
  // final playedNotes = <String>[];
  // var playedNotesString = " ";
  // var bpm= 90;
  // void raiseBpm(){
  //   setState(() {
  //     bpm++;
  //   });
  // }
  // void lowerBpm(){
  //   setState(() {
  //     bpm--;
  //   });
  // }
  // var addingNote="Z";
  // void addNote(note){
  //   setState(() {
  //     playedNotes.add(note);
  //     playedNotesString = playedNotes.toString();
  //   });
  // }
  //
  // void clear_notes(){
  //   setState(() {
  //     playedNotes.clear();
  //     playedNotesString = " ";
  //   });
  // }
  //
  // Widget musicBox(BuildContext context){
  //   return Container(
  //     padding: const EdgeInsets.all(10.0),
  //     margin: const EdgeInsets.all(10.0),
  //     decoration: BoxDecoration(
  //         border: Border.all(color: Colors.blueAccent, width: 2,)
  //     ),
  //     child:  Column(
  //       children: <Widget>[
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: <Widget>[
  //             Container(
  //               alignment: Alignment.topLeft,
  //               child : Row(
  //                 children: <Widget>[
  //                   DropdownButton(
  //                     value: instrument,
  //                     items: instruments.map((String items) {
  //                       return DropdownMenuItem(
  //                         value: items,
  //                         child: Text(items),
  //                       );
  //                     }).toList(),
  //                     onChanged: (String? newValue) {
  //                       setState(() {
  //                         instrument = newValue!;
  //                       });
  //                     },
  //                   ),
  //                   Container(
  //                     child: Row(
  //                       children: <Widget>[
  //                         MaterialButton(
  //                           onPressed: lowerBpm,
  //                           color: Colors.red,
  //                           child: Text("-"),
  //                           shape: CircleBorder(),
  //                           minWidth: 5.0,
  //                         ),
  //                         Text(
  //                           "BPM: $bpm",
  //                         ),
  //                         MaterialButton(
  //                           onPressed: raiseBpm,
  //                           color: Colors.red,
  //                           child: Text("+"),
  //                           shape: CircleBorder(),
  //                           minWidth: 5.0,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Container(
  //               alignment: Alignment.topRight,
  //               child: MaterialButton(
  //                 onPressed: clear_notes,
  //                 child: Text("Clear"),
  //                 color: Colors.lightBlueAccent,
  //               ),
  //             ),
  //           ],
  //         ),
  //         Container(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Text(playedNotes.toString()),
  //             ],
  //           ),
  //         ),
  //         Container(
  //           padding: EdgeInsets.only(top: 10.0),
  //           child : Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               MaterialButton(
  //                 onPressed: (){addNote("A");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("A"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //               MaterialButton(
  //                 onPressed: (){addNote("B");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("B"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //               MaterialButton(
  //                 onPressed: (){addNote("C");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("C"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //               MaterialButton(
  //                 onPressed: (){addNote("D");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("D"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //               MaterialButton(
  //                 onPressed: (){addNote("E");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("E"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //               MaterialButton(
  //                 onPressed: (){addNote("F");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("F"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //               MaterialButton(
  //                 onPressed: (){addNote("G");},
  //                 color: Colors.yellowAccent,
  //                 child: Text("G"),
  //                 shape: CircleBorder(),
  //                 minWidth: 10.0,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  List<Instrument> l1 = [Instrument()];

  void addInstrument(){
    setState(() {
      l1.add(const Instrument());
      print(l1.length);
    });
  }

  void delInstrument(){
    setState(() {
      if (l1.length > 0){
        l1.removeLast();
        print(l1.length);
      }
    });
  }
  //If you read this comment you have the big gay


  //stuff for playing
  var highestbpm=90;
  final allNotes = <String>[];


  //create an array with the highest bpm and we iterate over it at the rate
  //notes/60_000ms
  //e.g. we have 90 notes per second we play 1 note every 667ms
  //so our delay between notes is 667ms
  void playNotes(){
    for (var item in l1) {
      print(item.toString());
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Music App"),
      //   centerTitle: true,
      // ),
      //on press of + button,
      //spawn new blue container
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: l1.length,
                itemBuilder: (BuildContext context, index){
                  return l1[index];
                },
                scrollDirection: Axis.vertical,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 45, top: 0, bottom: 10),
                child: MaterialButton(
                  height: 50,
                  onPressed: (){
                    addInstrument();
                  },
                  color: Colors.blue,
                  child: Text("+"),
                  shape: const CircleBorder(),
                ),
              ),
              MaterialButton(
                onPressed: (){playNotes();},
                color: Colors.greenAccent,
                child: Text("Play"),
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 45, right: 10, top: 0, bottom: 10),

                child: MaterialButton(
                  height: 50,
                  onPressed: (){delInstrument();},
                  color: Colors.redAccent,
                  child: Text("Del"),
                  shape: CircleBorder(),
                ),
              )
            ],
          ),
          ],
        ),
      ),
    );


  }
}

//
//
// Container(
// padding: const EdgeInsets.all(10.0),
// margin: const EdgeInsets.all(10.0),
// decoration: BoxDecoration(
// border: Border.all(color: Colors.blueAccent, width: 2,)
// ),
// child:  Column(
// children: <Widget>[
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// Container(
// alignment: Alignment.topLeft,
// child : Row(
// children: <Widget>[
// DropdownButton(
// value: instrument,
// items: instruments.map((String items) {
// return DropdownMenuItem(
// value: items,
// child: Text(items),
// );
// }).toList(),
// onChanged: (String? newValue) {
// setState(() {
// instrument = newValue!;
// });
// },
// ),
// Container(
// child: Row(
// children: <Widget>[
// MaterialButton(
// onPressed: lowerBpm,
// color: Colors.red,
// child: Text("-"),
// shape: CircleBorder(),
// minWidth: 5.0,
// ),
// Text(
// "BPM: $bpm",
// ),
// MaterialButton(
// onPressed: raiseBpm,
// color: Colors.red,
// child: Text("+"),
// shape: CircleBorder(),
// minWidth: 5.0,
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// Container(
// alignment: Alignment.topRight,
// child: MaterialButton(
// onPressed: clear_notes,
// child: Text("Clear"),
// color: Colors.lightBlueAccent,
// ),
// ),
// ],
// ),
// Container(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// Text(playedNotes.toString()),
// ],
// ),
// ),
// Container(
// padding: EdgeInsets.only(top: 10.0),
// child : Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// MaterialButton(
// onPressed: (){addNote("A");},
// color: Colors.yellowAccent,
// child: Text("A"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// MaterialButton(
// onPressed: (){addNote("B");},
// color: Colors.yellowAccent,
// child: Text("B"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// MaterialButton(
// onPressed: (){addNote("C");},
// color: Colors.yellowAccent,
// child: Text("C"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// MaterialButton(
// onPressed: (){addNote("D");},
// color: Colors.yellowAccent,
// child: Text("D"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// MaterialButton(
// onPressed: (){addNote("E");},
// color: Colors.yellowAccent,
// child: Text("E"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// MaterialButton(
// onPressed: (){addNote("F");},
// color: Colors.yellowAccent,
// child: Text("F"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// MaterialButton(
// onPressed: (){addNote("G");},
// color: Colors.yellowAccent,
// child: Text("G"),
// shape: CircleBorder(),
// minWidth: 10.0,
// ),
// ],
// ),
// ),
// ],
// ),
// ),