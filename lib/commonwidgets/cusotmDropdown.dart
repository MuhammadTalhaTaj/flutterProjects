import 'package:demo_flutter/constants/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../icons_variables/icons_variables.dart';



class CustomDropDownButton extends StatefulWidget {

  List<String> list;
  ValueChanged<String> onPressed;
  Color color;
  String hint;
  String selected;

  CustomDropDownButton({required this.list, required this.onPressed, required this.color,  this.hint='',this.selected=''});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue =  null;
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 50.h),
      child: Container(
        //height: 58.h,
        padding: paddingH13,
        decoration: BoxDecoration(


            // border: Border.all( color:Colors.grey,width: 0,),
            color: widget.color
        ),

        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            validator: (value) => value == null ? 'field required' : null,
            itemHeight: 60.h,
            dropdownColor: widget.color,
            hint:Text(widget.selected==''?widget.hint:widget.selected,style:  TextStyle(fontSize: 20.sp,color: Colors.white),),
            isExpanded: true,
            value: selectedValue,
            icon: SizedBox(height: 15.h,child: Image.asset(IconsVariables.vectorIcon,fit: BoxFit.fill,),),
            // icon: const Icon(Icons.arrow_drop_down_sharp,color: Colors.white,size: 40),
            elevation: 16,
            style: TextStyle(color: Colors.white,fontSize: 20.sp),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
              widget.onPressed(value!);
            },
            items: widget.list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(

                alignment: Alignment.centerLeft,

                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20.sp,color: Colors.white),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
