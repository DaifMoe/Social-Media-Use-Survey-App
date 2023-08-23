import 'package:flutter/material.dart';
import 'package:reviewform/app_colors.dart';
import 'package:reviewform/result_screen.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var percen=0.0;
  var percen_dic={};
  var q2;
  var q8;
  var q5;
  var q10;
  var q12;
  String? selectedValue = null;
  String? selectedValue6 = null;
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("No"),value: "No"),
      DropdownMenuItem(child: Text("Yes"),value: "Yes"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems6{
    List<DropdownMenuItem<String>> menuItems6 = [
      DropdownMenuItem(child: Text("No"),value: "No"),
      DropdownMenuItem(child: Text("Yes"),value: "Yes"),
    ];
    return menuItems6;
  }
  void q2Change(String? value) {
    print("4 value ${value}");

    setState(() {
      percen_dic["2"]=double.parse(value!);
      q2 = value;
    });}
  void q8Change(String? value) {
    setState(() {

      percen_dic["8"]=double.parse(value!);
      q8 = value;
    });}
  void q5Change(String? value) {
    setState(() {
      if(value=="Yes"){
        percen+=14.28;
        percen_dic["5"]=14.28;
        setState(() {

        });

      }else{
        percen-=14.28;
        percen_dic["5"]=0.0;
        setState(() {});
      }
      q5 = value;
    });}
  void q10Change(String? value) {
    if(value=="Yes"){
      percen+=14.28;
      percen_dic["10"]=14.28;
      setState(() {

      });

    }else{
      percen-=14.28;
      percen_dic["10"]=0.0;
      setState(() {});
    }
    setState(() {
      q10 = value;
    });}
  void q12Change(String? value) {
    if(value=="Yes"){
      percen+=14.28;
      percen_dic["12"]=14.28;
      setState(() {

      });

    }else{
      percen-=14.28;
      percen_dic["12"]=0.0;
      setState(() {});
    }
    setState(() {
      q12 = value;
    });}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.appmainColor,
                  AppColors.appmainColor.withOpacity(0.5),
                  AppColors.appprimarycolor.withOpacity(0.5),
                  AppColors.appprimarycolor])
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           children:  [
             SizedBox(height: size.height*0.09,),
             /// Question 1
             Column(
               children: [
                 const Text("Question#1",
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.w600
                   ),
                 ),
                 SizedBox(height: size.height*0.01,),
                 const Text("How many hours a day is your screen time?",
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.w600
                   ),
                 ),
                 Card(
                   margin: EdgeInsets.all(15),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15)
                   ),
                   child: TextFormField(
                     // autofillHints: [AutofillHints.email],
                     decoration:  const InputDecoration(
                       contentPadding: EdgeInsets.all(10),
                       border: InputBorder.none,
                       hintText:"Enter Your Hours" ,

                     ),
                   ),
                 )
               ],
             ),
             /// question #2 Radio yes or no
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#2",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("How many hours a day do you spend on social media apps?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(

                               value: "0",
                               groupValue: q2,
                               onChanged: q2Change,
                             ),
                           ),
                           const Text("1-2 hours",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       ),
                       SizedBox(width: 50,),
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(
                               value: "5",
                               groupValue: q2,
                               onChanged: q2Change,
                             ),
                           ),
                           const Text("3-4 hours",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       )


                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(
                               value: "10",
                               groupValue: q2,
                               onChanged: q2Change,
                             ),
                           ),
                           const Text("5-8 hours",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       ),
                       SizedBox(width: 50,),
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(
                               value: "14.28",
                               groupValue: q2,
                               onChanged: q2Change,
                             ),
                           ),
                           const Text("10-12 hours",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       )


                     ],
                   ),
                 ],
               ),
             ),

             /// Question #3
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#3",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Does social media usage negatively impact your daily life?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Card(
                     margin: EdgeInsets.only(top: 10),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: DropdownButtonFormField(
                         decoration: const InputDecoration(
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.all(10),

                           // filled: true,
                           // fillColor: Colors.white,
                         ),
                         dropdownColor: Colors.white,
                         value: selectedValue,

                         onChanged: (String? newValue) {
                           setState(() {
                             if(newValue=="yes"){
                               percen_dic["3"]=14.28;
                               percen+=14.28;
                               setState(() {

                               });

                             }else{
                               percen_dic["3"]=0.0;
                               percen-=14.28;
                               setState(() {

                               });
                             }
                             selectedValue = newValue!;
                           });
                         },
                         items: dropdownItems),
                   ),
                 ],
               ),
             ),

             /// Question #4
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#4",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Do you consider yourself addicted to social media?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Card(
                     margin: EdgeInsets.only(top: 10),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: TextFormField(
                       // autofillHints: [AutofillHints.email],
                       decoration:  const InputDecoration(
                         contentPadding: EdgeInsets.all(10),
                         border: InputBorder.none,
                         hintText:"Enter Your answer" ,

                       ),
                     ),
                   )
                 ],
               ),
             ),

             /// question #5 Radio yes or no
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#5",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Can you go a day without the usage of social media apps?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Radio<String>(
                         value: "Yes",
                         groupValue: q5,
                         onChanged: q5Change,
                       ),
                       const Text("Yes",style: TextStyle(
                           color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600
                       ),),
                       Radio<String>(
                         value: "No",
                         groupValue: q5,
                         onChanged: q5Change,
                       ),
                       const Text("No",style: TextStyle(
                           color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600
                       ),),
                     ],
                   )
                 ],
               ),
             ),
             /// Question #6
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#6",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Do you feel the need to constantly portray a certain self image on social media?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Card(
                     margin: EdgeInsets.only(top: 10),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: DropdownButtonFormField(
                         decoration: const InputDecoration(
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.all(10),

                           // filled: true,
                           // fillColor: Colors.white,
                         ),
                         dropdownColor: Colors.white,
                         value: selectedValue6,

                         onChanged: (String? newValue) {
                           print("new value ${newValue} ");
                           if(newValue=="Yes"){
                             percen_dic["6"]=14.28;
                             percen+=14.28;

                             setState(() {

                             });
                             print("new value ${percen} ");
                           }else{
                             percen_dic["6"]=0.0;
                             percen-=14.28;
                             setState(() {});
                             print("new value--- ${percen} ");
                           }
                         },
                         items: dropdownItems6),
                   ),
                 ],
               ),
             ),
             /// Question #7
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#7",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Does the use of social media distract you from day to day activities?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Card(
                     margin: EdgeInsets.only(top: 10),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: TextFormField(
                       // autofillHints: [AutofillHints.email],
                       decoration:  const InputDecoration(
                         contentPadding: EdgeInsets.all(10),
                         border: InputBorder.none,
                         hintText:"Enter Your answer" ,

                       ),
                     ),
                   )
                 ],
               ),
             ),
             /// question #8
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#8",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("How often do you post on social media apps?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(

                               value: "0",
                               groupValue: q8,
                               onChanged: q8Change,
                             ),
                           ),
                           const Text("Never",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       ),
                       SizedBox(width: 78,),
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(
                               value: "5",
                               groupValue: q8,
                               onChanged: q8Change,
                             ),
                           ),
                           const Text("1-2 times a day",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       )
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(
                               value: "10",
                               groupValue: q8,
                               onChanged: q8Change,
                             ),
                           ),
                           const Text("3-4 times a day",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       ),
                       SizedBox(width: 10,),
                       Row(
                         children: [
                           Container(
                             width:40,
                             child: Radio<String>(
                               value: "14.28",
                               groupValue: q8,
                               onChanged: q8Change,
                             ),
                           ),
                           const Text("5+ times a day",style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       )


                     ],
                   ),
                 ],
               ),
             ),
             /// question #9
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#9",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Do you check social media apps before going to sleep?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Card(
                     margin: EdgeInsets.only(top: 10),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: TextFormField(
                       // autofillHints: [AutofillHints.email],
                       decoration:  const InputDecoration(
                         contentPadding: EdgeInsets.all(10),
                         border: InputBorder.none,
                         hintText:"Enter Your answer" ,

                       ),
                     ),
                   )
                 ],
               ),
             ),
             /// question #10 Radio yes or no
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#10",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Do you check social media immediately upon waking up?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Radio<String>(
                         value: "Yes",
                         groupValue: q10,
                         onChanged: q10Change,
                       ),
                       const Text("Yes",style: TextStyle(
                           color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600
                       ),),
                       Radio<String>(
                         value: "No",
                         groupValue: q10,
                         onChanged: q10Change,
                       ),
                       const Text("No",style: TextStyle(
                           color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600
                       ),),
                     ],
                   )
                 ],
               ),
             ),
             /// question #11
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#11",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Do you want to quit social media usage?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Card(
                     margin: EdgeInsets.only(top: 10),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                     child: TextFormField(
                       // autofillHints: [AutofillHints.email],
                       decoration:  const InputDecoration(
                         contentPadding: EdgeInsets.all(10),
                         border: InputBorder.none,
                         hintText:"Enter Your answer" ,

                       ),
                     ),
                   )
                 ],
               ),
             ),
             /// question #12 Radio yes or no
             Padding(
               padding:  EdgeInsets.only(left: 15,right: 15,bottom: size.height*0.020),
               child: Column(
                 children: [
                   const Text("Question#12",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   SizedBox(height: size.height*0.01,),
                   const Text("Has social media ever made you feel bad or discouraged in your life?",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                         fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Radio<String>(
                         value: "Yes",
                         groupValue: q12,
                         onChanged: q12Change,
                       ),
                       const Text("Yes",style: TextStyle(
                           color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600
                       ),),
                       Radio<String>(
                         value: "No",
                         groupValue: q12,
                         onChanged: q12Change,
                       ),
                       const Text("No",style: TextStyle(
                           color: Colors.black,
                           fontSize: 16,
                           fontWeight: FontWeight.w600
                       ),),
                     ],
                   )
                 ],
               ),
             ),

             /// submit button is here
             InkWell(
               onTap: (){
                 print("here is percengt ${percen_dic}");
                 percen=0;
                 var q = percen_dic.keys.toList();
                 for(int i=0;i<q.length;i++){
                   percen+=percen_dic[q[i]];
                 }
                 Get.to(ResultScreen(percen));
               },
               child: Container(
                 margin: EdgeInsets.only(left:50,right: 50),
                 height: 45,
                 width: size.width,
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: const Center(
                   child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                 ),
               ),
             ),
             SizedBox(height: size.height*0.05,)



           ],
          ),
        ),
      ),
    );
  }

}

