import 'package:flutter/material.dart';
Widget defaultFormField({
  required TextEditingController controller
  , required TextInputType ? type,
  Function (String)? onsubmit,
  Function (String) ? onchanged,
  required FormFieldValidator<String>?validate,
  required IconData prefix,
  required String label,
  bool  isPassword =false,
  IconData ?suffix,
  bool readonly=false,
  GestureTapCallback? onTap,
  final VoidCallback? suffixPressed,

})=>TextFormField(readOnly:readonly ,style: TextStyle(height:0.9),
  onTap:onTap ,
  validator: validate,
  obscureText:isPassword ,
  controller: controller,
  keyboardType: type,
  decoration: InputDecoration(fillColor: Colors.white,filled: true,
      labelText: label,
      prefixIcon: Icon(prefix),suffixIcon:suffix !=null ? IconButton(icon: Icon(suffix),
        onPressed: suffixPressed,): null ,
      border:  OutlineInputBorder(borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(35.0))),
  onFieldSubmitted:onsubmit ,
  onChanged: onchanged
  ,);