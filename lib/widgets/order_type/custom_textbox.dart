import 'package:flutter/material.dart';

class CustomTextbox extends StatelessWidget {
  const CustomTextbox(
      {super.key,
      this.hintText,
      this.label,
      this.isObsecure,
      this.onTap,
      this.onSuffixPress,
      this.prefixIcon,
      this.suffixIcon,
      this.isReadOnly,
      this.floatingLabelBehavior,
      this.controller,
      this.onChanged});
  final TextEditingController? controller;
  final String? hintText;
  final Widget? label;
  final bool? isObsecure, isReadOnly;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final VoidCallback? onSuffixPress, onTap;
  final void Function(String)? onChanged;
  final IconData? prefixIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 224, 219, 219),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: TextFormField(
          onChanged: onChanged,
          controller: controller,
          onTap: onTap,
          readOnly: isReadOnly ?? false,
          obscureText: isObsecure ?? false,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 7.5),
                    child: Icon(prefixIcon, size: 25),
                  )
                // : const Padding(padding: EdgeInsets.only(left: 1.5)),
                : null,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 7.5),
              child: IconButton(
                onPressed: onSuffixPress,
                icon: Icon(
                  suffixIcon,
                  size: 25,
                ),
              ),
            ),
            border: InputBorder.none,
            hintText: hintText,
            label: label,
            floatingLabelBehavior: floatingLabelBehavior,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff505050),
            ),
            contentPadding:
                EdgeInsets.only(left: prefixIcon == null ? 21 : 0, right: 10),
          ),
        ),
      ),
    );
  }
}
