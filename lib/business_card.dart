import 'package:flutter/material.dart';

class BusinessCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Row(
                children: [
                  _profilePic,
                  _infoColumn(context),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _addressText(context),
                  _phoneText(context),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIconColumn(color, Icons.accessibility, 'Accessibility'),
                  _buildIconColumn(color, Icons.timer, 'Timer'),
                  _buildIconColumn(color, Icons.phone_android, 'Android Phone'),
                  _buildIconColumn(color, Icons.phone_iphone, 'IPhone'),
                ],
              ),
            ])));
  }

  final _profilePic = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(
      Icons.account_circle,
      size: 80,
    ),
  );

  Widget _infoColumn(con) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Punith K', style: Theme.of(con).textTheme.headline5),
          Text('Web and Mobile App Developer',
              style: Theme.of(con).textTheme.headline5),
        ],
      );

  Widget _addressText(con) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Some Street', style: Theme.of(con).textTheme.headline6));

  Widget _phoneText(con) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('100-100', style: Theme.of(con).textTheme.headline6));

  Widget _buildIconColumn(Color color, IconData icon, String tooltip) {
    return IconButton(
      tooltip: tooltip,
      icon: Icon(icon, color: color),
      onPressed: () {},
    );
  }
}
