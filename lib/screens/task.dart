import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder/AppStyleModeNotifier.dart';
import 'package:reminder/screens/create_task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    final appStyleMode = Provider.of<AppStyleModeNotifier>(context);
    return Scaffold(
      body: Container(
        color: appStyleMode.primaryBackgroundColor,
        width: double.infinity,
        child: Row(
          children: [

            ///Container for Content
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Remind me!",
                      style: TextStyle(
                          fontSize: 19,
                          height: 1.4,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w900,
                          color: appStyleMode.primaryMessageTextColor,
                      ),
                    ),

                    ///For spacing
                    SizedBox(
                      height:9.0,
                    ),

                    Row(
                      children: [
                        ///Text
                        Text(
                          "Water",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 38.0,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: appStyleMode.primaryTextColorDark,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit,
                          color: appStyleMode.primaryTextColorDark,
                          size: 30.0),
                          onPressed: (){},
                        )
                      ],
                    ),

                    ///List of all the task
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index){

                          ///Change appearance of Completed Task
                          ///Say index 1 is completed
                          return Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color: appStyleMode.borderColor,
                                ),
                                ///change the color
                                color: index == 1 ? appStyleMode.primaryBoxColor : Colors.transparent
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///Show completed check
                                ///Task Title
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Water",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            ///Color text inside the box
                                            color: index == 1 ? Colors.white : appStyleMode.primaryTextColorDark,
                                        ),
                                      ),
                                    ),
                                    ///For Space
                                    SizedBox(width: 4,),



                                    index == 1 ? Icon(Icons.check_circle, color: Colors.white,) : Container()

                                  ],
                                ),


                                SizedBox(height: 8,),

                                ///Task Detail
                                Row(
                                  children: [
                                    Text(
                                      "06 FEB 2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.7,
                                          fontSize: 12,
                                          ///Change the date color (done task)
                                          color: index == 1 ? Colors.white : appStyleMode.primaryTextColorDark,
                                      ),
                                    ),
                                    Spacer(),

                                    index == 1 ?
                                    Text(
                                      "DONE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 0.8,
                                          fontSize: 12,
                                          color: Colors.white
                                      ),
                                    ) :
                                    Text(
                                      "12:00 - 3:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: index == 1 ? Colors.white : appStyleMode.primaryTextColorDark,
                                      ),
                                    ),
                                  ],
                                )
                              ],

                            ),
                          );
                        },
                        ///how many boxes
                        separatorBuilder: (context, index) => Divider(height: 15, color: Colors.transparent,),
                        itemCount: 7,
                      ),
                    ),

                    ///For spacing
                    SizedBox(
                      height: 12,
                    ),

                    ///Button for add new task
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        color: Colors.redAccent,
                        child: Text(
                          "ADD NEW TASK",
                          style: TextStyle(
                              fontSize: 19,
                              letterSpacing: 0.6,
                              color: Colors.white,
                              fontWeight: FontWeight.w900
                          ),
                        ),

                        ///navigate to create task screen
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CreateTaskScreen()
                          ));
                        },
                      ),
                    )

                  ],
                ),
              ),
            ),

            ///Container for task categories
            Container(
              width: MediaQuery.of(context).size.width*0.22,
              color: Colors.black,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
              child: Column(
                children: [

                  ///Menu button
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),

                  ///For space
                  Spacer(),

                  ///Container for cat button (days)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      ///Stands for water
                      child: Text(
                        "W",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  SizedBox(height: 16,),

                  ///Container for cat button
                  ///for pills
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "P",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  SizedBox(height: 16,),

                  ///Container for cat button
                  ///For jogging
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "J",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  SizedBox(height: 16,),

                  ///Container for cat button
                  ///for laundry
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 16,),

                  ///for reading book
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800]
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "R",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                        ),
                      ),
                    ),
                  ),


                  ///More buttons
                  ///ForSpace
                  Spacer(),
                  ///Menu button
                  IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
