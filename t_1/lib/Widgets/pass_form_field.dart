import 'package:flutter/material.dart';
import 'package:t_1/Constants/Colors.dart';
class PassFormField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final IconData? suffixIcon;

  const PassFormField({
    super.key,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
  });

  @override
  // ignore: library_private_types_in_public_api
  _PassFormFieldState createState() => _PassFormFieldState();
}

class _PassFormFieldState extends State<PassFormField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          obscureText: _isObscure,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: AppColors.hintColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            suffixIcon: widget.suffixIcon != null
                ? IconButton(
                    icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }
}