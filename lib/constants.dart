import 'package:flutter/material.dart';
const textStyling = TextStyle(
  color: Colors.black54,
  fontWeight: FontWeight.w500,
  fontSize: 25,
  fontFamily: 'Georgia',
);
class Mycontainer extends StatefulWidget {
  Mycontainer(this.path,this.text);
  var text;
  var path;

  @override
  State<Mycontainer> createState() => _MycontainerState();
}

class _MycontainerState extends State<Mycontainer> {
  Color mycolor=Colors.white;
  @override
  Widget build(BuildContext context) {
    var mypath=widget.path;
    var mytext=widget.text;
    print(mytext);
    print(mypath);
    return GestureDetector(
      onTap: (){
        mycolor==Colors.white?mycolor=Colors.green:mycolor=Colors.white;
        setState((){

        });
      },
      child: Container(
        padding:const EdgeInsets.only(bottom: 5),
        height: 130,
        width: 130,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('$mypath',
              height: 100,
              width: 100,
            ),
            Text('$mytext',
              style:  TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mycolor,
          boxShadow:const [ BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
            offset: Offset(1,5),
          ),],
        ),
      ),
    );
  }
}

Widget myButton()
{
  return Container(
    height: 60,
   width: 160,
   child: MaterialButton(
     height: 60,
     onPressed: (){

     },
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Next',
         style: textStyling,),
         Icon(Icons.navigate_next_sharp,
         color: Colors.green,
         size: 50,),
       ],
     ),
   ),
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
