import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../commonwidgets/customTextField.dart';

class PanUpdate extends StatelessWidget {
  const PanUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                // begin: Alignment.centerLeft,
                colors: [Color(0xFF483548), Color(0xff1e051a)],
              )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height1 * 0.3,
                  child: Image.asset('assets/images/pandetails.png'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: height1 * 0.7,
                  decoration: BoxDecoration(
                      color: Color(0xff35192f),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Add PAN Details',
                            style: headingTextStyle(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(

                            'Please enter pan details to continue',
                            style: subBodyTextStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Text(
                            'PAN Number',
                            style: bodyTextStyle(context),
                          ),
                          SizedBox(

                            height: 10,
                          ),
                          CustomTextField(labelText: 'Enter Number',),

                          SizedBox(
                            height: 10,
                          ),
                          RichText(text: TextSpan(text: 'Note: ',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFFD7E14)),children: [TextSpan(text:'Lorem ipsum dolor sit amet consectetur. Lorem ipsum dolor sit amet.' ,style: TextStyle(fontWeight: FontWeight.normal))],),),
                                SizedBox(height: 25,),
                          Text(
                            'Upload Your Image',
                            style: bodyTextStyle(context),
                          ),
                          SizedBox(

                            height: 10,
                          ),
                          DottedBorder(
                            dashPattern: [8,4],
                            color: Colors.white,
                            strokeWidth: 0.5,
                            child: Container(
                            color: Color(0xff1B021A),
                              height: 58,
                              width: double.infinity,
                              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color(0xff1B021A), ),onPressed: (){}, child: Row(children: [Icon(Icons.add,color: Colors.white,size: 20,),SizedBox(width: 5,),Text('Upload image',style: bodyTextStyle(context),)],)),
                            ),
                          )

                        ],
                      ),



                      Column(
                        children: [
                          CustomElivitedButton(text: 'Continue', onPress: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Congratulation(),));
                          }),
                          SizedBox(height: 15,),
                          GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));}, child: Text('Skip',style: bodyTextStyle(context),))

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



