import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  final String title;
  final String text;
  final String date;
  final Color color;
  final GestureTapCallback onTap;
  const NoteWidget({
    Key? key,
    required this.title,
    required this.text,
    required this.date,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0XFFF2F5FA),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 0.1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    spreadRadius: 0.06,
                    blurRadius: 0.1,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '$title',
                  style: TextStyles.title,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.date_range,
                    color: AppColors.preto.withOpacity(0.54),
                  ),
                  Icon(
                    Icons.attach_file,
                    color: AppColors.preto.withOpacity(0.54),
                  ),
                  Icon(
                    Icons.favorite,
                    color: AppColors.preto.withOpacity(0.54),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              child: Text(
                "$text",
                style: TextStyles.text,
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
              child: Text(
                '$date',
                style: TextStyles.data,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
