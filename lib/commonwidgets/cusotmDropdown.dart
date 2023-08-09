import 'package:flutter/material.dart';



class CustomDropDownButton extends StatefulWidget {
  List<String> list;
  ValueChanged<String> onPressed;
  Color color;

  CustomDropDownButton(this.list, this.onPressed,this.color);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.list.isNotEmpty ? widget.list[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(

          // border: Border.all( color:Colors.grey,width: 0,),
          color: widget.color
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(),

        value: selectedValue,
        icon: Container(height: 50,child: Image.asset('lib/icons/Vector.png'),),
        // icon: const Icon(Icons.arrow_drop_down_sharp,color: Colors.white,size: 40),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
          widget.onPressed(value!);
        },
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(


            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          );
        }).toList(),
      ),
    );
  }
}