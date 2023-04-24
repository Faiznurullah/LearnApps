import 'package:flutter/material.dart';

class ScreenDesc extends StatelessWidget {
  ScreenDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra blandit lacus, ut sagittis quam. Mauris at lectus quis lorem tristique convallis ac sed lectus. Phasellus ac dapibus risus. Donec vitae pharetra erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vel elit in velit viverra tincidunt a id ipsum. Quisque lacinia fermentum sem at fermentum. Morbi lobortis tincidunt porta. Sed eu urna a augue imperdiet pellentesque. Vivamus tincidunt quam sodales, sagittis sapien eu, rutrum metus. Sed orci felis, ultricies nec pellentesque eleifend, scelerisque sit amet leo. Vestibulum nisl felis, posuere non placerat a, semper at dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur accumsan dui et vehicula pretium. Aenean vehicula felis ut nulla sodales, in congue est scelerisque. Vivamus tincidunt lobortis sapien et maximus. ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
