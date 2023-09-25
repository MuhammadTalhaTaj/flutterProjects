import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/dottedElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:demo_flutter/utils/app_utils/validators/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../constants/app_padding.dart';
import '../../constants/snackbar.dart';
import '../../generated/l10n.dart';

class PanUpdate extends StatelessWidget {
  static const routeName = 'pan-update';

  const PanUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=1.sh-MediaQuery.of(context).viewPadding.top;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
         decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset(ImageVariables.backgroundImage).image,
            fit: BoxFit.cover,
          ),),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 0.33*height,
                  child: Image.asset(ImageVariables.panDetailsImage),
                ),
                Container(
                  padding: padding16,
                  width: double.infinity,
                  height: 0.67*height,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer.withOpacity(0.4),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),

                  //when the height is less then 650 then it should scroll otherwise there can be problem in size so thats why add this logic

                  child: context.height < 650
                      ? const SingleChildScrollView(
                          child: BottomContainer(),
                        )
                      : const BottomContainer(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class BottomContainer extends StatefulWidget {

  const BottomContainer({
    super.key,
  });

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  String panNumber='';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).addPanDetails,
              style: headingTextStyle(),
            ),
            AppSize(
              height: 10,
            ),
            Text(
              S.of(context).pleaseEnterPanDetails,
              style: subBodyTextStyle(),
            ),
            AppSize(
              height: 20.h,
            ),
            Text(
              S.of(context).panNumber,
              style: bodyTextStyle(),
            ),
            AppSize(
              height: 10.h,
            ),
            CustomTextField(
              callback: (v){
                setState(() {
                  panNumber=v;
                });
              },
                    keyBoardtype: TextInputType.number,
              labelText: S.of(context).enterNumber,
            ),
            AppSize(
              height: 10.h,
            ),
            RichText(
              text: TextSpan(
                text: S.of(context).note,
                style: alertTextStyle(),
                children: [
                  TextSpan(
                      text: S.of(context).loremIspumdolor,
                      style: const TextStyle(fontWeight: FontWeight.normal))
                ],
              ),
            ),
            AppSize(
              height: 25.h,
            ),
            Text(
              S.of(context).uploadImage,
              style: bodyTextStyle(),
            ),
            AppSize(
              height: 10.h,
            ),
            DottedElevatedButton(),

          ],
        ),
        Column(
          children: [
            CustomElivitedButton(
                text: S.of(context).continue1,
                onPress: () {
                  if(panNumber.isPanValid()){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PanUpdate(),
                        ));
                  }

                  else{
                    ScaffoldMessenger.of(context).showSnackBar(customSnackBar);
                    // showDialog(context: context, builder: (context) => ValidatorPopup(),);
                    return;
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Congratulation(),
                      ));
                }),
            AppSize(
              height: 15.h,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                },
                child: Text(
                  S.of(context).skip,
                  style: bodyTextStyle(),
                ))
          ],
        )
      ],
    );
  }
}
