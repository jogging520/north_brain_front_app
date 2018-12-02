
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryPhotoView extends StatelessWidget {
  final PageController pageController;
  final List<String> photos;
  final Widget loadingChild;
  final int initialPage;

  GalleryPhotoView({Key key, @required this.photos, this.loadingChild, this.initialPage}) :
        pageController = PageController(initialPage: initialPage),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          PhotoViewGallery(
            pageOptions: photos.map((photo) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(photo),
                heroTag: photo,
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 1.1,
              );
            }).toList(),
            loadingChild: loadingChild,
            backgroundDecoration: BoxDecoration(
              color: Colors.black87,
            ),
            pageController: pageController,
            onPageChanged: null,
          ),
        ],
      ),
    );

  }

}