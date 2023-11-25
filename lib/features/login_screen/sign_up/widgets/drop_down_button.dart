import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({
    required this.hintText,
    required this.items,
    super.key,
    required this.onChanged,
  });

  final String hintText;
  final List<String> items;
  // ignore: strict_raw_type
  final ValueChanged onChanged;

  @override
  // ignore: library_private_types_in_public_api
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset('assets/svg/register/arrow-down.svg')],
        ),
        value: _selectedValue,
        hint: Text(
          widget.hintText,
          style: AppTextStyles.hinttextStyle,
        ),
        onChanged: (String? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
          widget.onChanged(newValue);
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: AppTextStyles.hinttextStyle),
          );
        }).toList(),
      ),
    );
  }
}
