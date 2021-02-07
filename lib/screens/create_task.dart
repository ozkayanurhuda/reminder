import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:reminder/AppStyleModeNotifier.dart';
import 'package:provider/provider.dart';



class CreateTaskScreen extends StatefulWidget {
  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  bool remindMe = true;

  @override
  Widget build(BuildContext context) {
    final appStyleMode = Provider.of<AppStyleModeNotifier>(context);
    return Scaffold(

      body: Container(

        margin: EdgeInsets.only(top: 50.0),
        width: double.infinity,
        padding: const EdgeInsets.all(32.0),
        color: appStyleMode.primaryBackgroundColor,
        child: Column(
          children: <Widget>[
            Text(
              "Remind me!",
              style: TextStyle(
                letterSpacing: 0.8,
                fontSize: 50.0,
                height: 0.8,
                fontWeight: FontWeight.w700,
                color: appStyleMode.primaryTextColorDark,
                fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(height: 25.0),

            ///Container for TextField
            TextField(
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 0.6,
                fontWeight: FontWeight.normal,
                color: appStyleMode.primaryTextColor,
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appStyleMode.primaryMessageTextColor),),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appStyleMode.primaryMessageTextColor)),
                hintText: "Task Name",
                hintStyle: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: appStyleMode.primaryTextColorLight,
                ),
              ),
            ),
            Spacer(),

            ///Container for Date
            Container(
              child: Row(
                children: <Widget>[
                  ///Container for Icon
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color.fromRGBO(255, 240, 240, 1)),
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(
                      Icons.calendar_today,
                      color: appStyleMode.primaryBoxColor,
                    ),
                  ),
                  SizedBox(width: 24.0),
                  ///for Text
                  Text(
                    "Saturday 6, February ",
                    style: TextStyle(
                      fontSize: 19,
                      height: 1.2,
                      letterSpacing: 0.6,
                      fontWeight: FontWeight.w700,
                      color: appStyleMode.primaryTextColorLight,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.0),

            ///Container for time
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color.fromRGBO(255, 240, 240, 1)),
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(
                      Icons.alarm,
                      color: appStyleMode.primaryBoxColor,
                    ),
                  ),
                  SizedBox(width: 24.0),
                  Text(
                    "2:00 - 3:00 PM",
                    style: TextStyle(
                      fontSize: 19,
                      letterSpacing: 0.6,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: appStyleMode.primaryTextColorLight,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),

            ///Container for Task Category(Work)
            Container(
              padding: const EdgeInsets.all(11),
              decoration: BoxDecoration(
                border: Border.all(
                  color: appStyleMode.borderColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),

              ///Row for water
              child: Row(
                children: [
                  ///Container for Icon
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color.fromRGBO(255, 210, 240, 1)),
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(
                      Icons.web_asset,
                      color: appStyleMode.primaryBoxColor,
                    ),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),

                  ///For Text
                  Text(
                    "Water",
                    style: TextStyle(
                        fontSize: 19,
                        height: 1.2,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w600,
                        color: appStyleMode.primaryTextColorDark),
                  ),

                  Spacer(),

                  ///end of the row

                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  )
                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            ///Container for remind me
            Container(
              padding: const EdgeInsets.all(11),
              decoration: BoxDecoration(
                border: Border.all(
                  color: appStyleMode.borderColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),

              ///Row for Icon - Text - Switch (remind me notifications)
              child: Row(
                children: [
                  ///Container for Icon
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color.fromRGBO(230, 230, 255, 1)),
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(
                      Icons.alarm_on,
                      color: appStyleMode.primaryBoxColor,
                    ),
                  ),
                  SizedBox(width: 24.0),

                  ///For Text
                  Text(
                    "Remind me",
                    style: TextStyle(
                        fontSize: 19,
                        height: 1.2,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w600,
                        color: appStyleMode.primaryTextColorDark),
                  ),

                  Spacer(),

                  ///For Switch
                  Switch(
                    onChanged: (value) {
                      setState(() {
                        remindMe = value;
                      });
                    },
                    value: remindMe,
                    activeColor: Colors.blue,
                  )
                ],
              ),
            ),
            Spacer(),

            ///Button for create Task
            Container(
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                color:appStyleMode.borderColor,
                child:Text("CREATE TASK",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.6,
                  fontSize: 19.0,
                  color: appStyleMode.primaryBackgroundColor,
                ),
                ),
                onPressed: () {},
              ),
            ),

          ],
        ),
      ),
    );
  }
}
