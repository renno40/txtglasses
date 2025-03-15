import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class homenotes extends StatefulWidget {
  const homenotes({super.key});

  void showbootsheet(BuildContext context){
    showBottomSheet(context: context, builder: builder)
  }


  @override
  State<homenotes> createState() => _homenotesState();
}

class _homenotesState extends State<homenotes> {
  List<Map<String, dynamic>> notes=[
    {"title":"flutter" , "body":"this is flutter"}
  ];
var titlecontroller = TextEditingController();

}
  void showbootsheet(BuildContext context){
    showDialog(context: context,
        builder: (context){
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "title",
                ) ,
              ),
              ElevatedButton(onPressed: insertnotes, child: Text("save"))
            ],
        ),

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notes.isEmpty?
      Center(child: Text("no notes added"),) :
      ListView.builder(itemCount:notes.length,
          itemBuilder: (context , index){
        return Container(
          height: 300.h,
          width: 350.w,
          color: Colors.yellow,
          child: Column(
            children: [
              Text(notes[index]["title"]??""),
              SizedBox(height: 10.h,),
              Text(notes[index["body"]??]"" ,style: TextStyle(fontSize: 30.sp),),
            ],
          ),
        );
          })
          ,floatingActionButton: FloatingActionButton(
      onPressed: (){ } , child: Icon(icon),
    ),
    );
  }
}
