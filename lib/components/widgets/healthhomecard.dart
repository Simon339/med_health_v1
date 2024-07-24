import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  
  final String title;
  final String goal;
  final String heading;
  final double value;
  final TextStyle _titleStyle =  GoogleFonts.nunito(
    textStyle: const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500
  ));
    HomeCard(
      {super.key,
      
      required this.title,
      required this.goal,
      required this.heading,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 16, 8, 8),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$heading ',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                          TextSpan(
                            text: title,
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Flexible(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: value / 100,
                          valueColor: AlwaysStoppedAnimation(
                           Colors.grey[200]!
                          ),
                          backgroundColor: Colors.grey[300]!,
                          minHeight: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '0',
                          style: _titleStyle,
                        ),
                        Text(
                          '$goal',
                          style: _titleStyle
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width:  21),
              const SizedBox(
                height: 52,
                width: 52,
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
