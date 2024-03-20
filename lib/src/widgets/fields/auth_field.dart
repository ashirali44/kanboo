import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/styles.dart';

class InputFieldFlutter extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final double borderRadius;
  final bool hideLabel;
  final double strokewidth;
  final double height;
  final showprefix;
  final prefixpath;
  final showsuffix;
  final suffixpath;
  final Color svgColor;

  const InputFieldFlutter({
    Key? key,
    this.height = 55,
    this.svgColor = Colors.white,
    this.showprefix = false,
    this.prefixpath = 'assets/search_white.svg',
    this.showsuffix = false,
    this.suffixpath = 'assets/clock.svg',
    required this.labelText,
    required this.hintText,
    this.hideLabel = false,
    required this.controller,
     this.borderRadius=12,
    this.strokewidth = 0.5
  }) : super(key: key);

  @override
  State<InputFieldFlutter> createState() => _InputFieldFlutterState();
}

class _InputFieldFlutterState extends State<InputFieldFlutter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        !widget.hideLabel ?  Text(
          widget.labelText,
          style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
        ) : SizedBox.shrink(),
        SizedBox(height: 15),
        Container(
          height: widget.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.6),
              width: widget.strokewidth
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              
              style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white),
              controller: widget.controller,
              decoration: InputDecoration(
                prefixIcon: widget.showprefix ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(widget.prefixpath,height: 20,),
                ) : null,
                suffixIcon: widget.showsuffix ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(widget.suffixpath,height: 20,
                  color: widget.svgColor,),
                ) : null,
                hintStyle: AppStyles.DESCRIPTION_STYLE,
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}




class InputFieldFlutterFilled extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final double borderRadius;
  final bool hideLabel;
  final double strokewidth;
  final double height;
  final showprefix;
  final prefixpath;
  final showsuffix;
  final suffixpath;

  const InputFieldFlutterFilled({
    Key? key,
    this.height = 55,
    this.showprefix = false,
    this.prefixpath = 'assets/search_white.svg',
    this.showsuffix = false,
    this.suffixpath = 'assets/clock.svg',
    required this.labelText,
    required this.hintText,
    this.hideLabel = false,
    required this.controller,
    this.borderRadius=12,
    this.strokewidth = 0.5
  }) : super(key: key);

  @override
  State<InputFieldFlutterFilled> createState() => _InputFieldFlutterFilledState();
}

class _InputFieldFlutterFilledState extends State<InputFieldFlutterFilled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: widget.height,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.08),

            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
            child: TextField(
              style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white),
              controller: widget.controller,
              decoration: InputDecoration(
                prefixIcon: widget.showprefix ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(widget.prefixpath,height: 20,color: Colors.grey,),
                ) : null,
                suffixIcon: widget.showsuffix ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(widget.suffixpath,height: 20,),
                ) : null,
                hintStyle: AppStyles.DESCRIPTION_STYLE,
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
