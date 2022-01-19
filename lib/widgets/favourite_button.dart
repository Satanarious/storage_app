import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  final double iconSize;
  const FavouriteButton(
    this.iconSize, {
    Key? key,
  }) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool _isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => setState(() {
              _isFavourite = !_isFavourite;
            }),
        child: Icon(
          _isFavourite ? Icons.favorite : Icons.favorite_border,
          size: widget.iconSize,
          color: _isFavourite ? Colors.red : Colors.grey,
        ));
  }
}
