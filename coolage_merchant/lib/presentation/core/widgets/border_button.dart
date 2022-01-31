import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';

class BorderButton extends StatelessWidget {
  final bool isLoading;
  final String? text;
  final double fontSize;
  final Function? onTap;
  final bool? isFavouriteIcon;
  final Color? color;
  final Color? textColor;
  final double? width;
  final bool isLiked;
  final double? height;
  final double? maxWidth;
  const BorderButton({
    Key? key,
    this.isLoading = false,
    this.text,
    this.fontSize = 17,
    @required this.onTap,
    this.isFavouriteIcon = false,
    this.width,
    this.color = Kolors.secondaryColor1,
    this.isLiked = false,
    this.textColor = Colors.black,
    this.height = 40,
    this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          onTap!();
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: height,
        constraints: BoxConstraints(
            maxWidth: maxWidth ?? width ?? MediaQuery.of(context).size.width),
        width: width ?? MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          vertical: isLoading ? 0 : 10,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
        ),
        child: isLoading
            ? buttonCircularProgress()
            : isFavouriteIcon!
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isLiked)
                        const Icon(
                          Icons.favorite,
                          color: Kolors.secondaryColor1,
                        )
                      else
                        const Icon(Icons.favorite_outline,
                            color: Kolors.secondaryColor1),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        text!,
                        style: TextStyle(
                          color: textColor!,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                : Text(
                    text!,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
      ),
    );
  }

  Container buttonCircularProgress() {
    return Container(
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(vertical : 6),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
            color! == Colors.white ? Colors.white : Kolors.fontColor),
      ),
    );
  }
}
