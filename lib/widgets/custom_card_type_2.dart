import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.imageUrl, this.name});

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      //! hacer redondeados los bordes de la imagen
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 30,
      child: Column(
        children: [
          // Image(
          //   image: NetworkImage(
          //       "https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-james-wheeler-1619317.jpg&fm=jpg"),
          // ),
          //! flutter lo maneja en cache
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage("assets/jar-loading.gif"),
            // ! evita que la imagen en el placeholder brinque,
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          //! si el name no es nulo mostrar card footer
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
