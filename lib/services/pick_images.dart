import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File?> getImageFromGallery() async {
  final ImagePicker picker = ImagePicker();
  try {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    } else {
      // Si el usuario cancela la selección de la imagen
      return null;
    }
  } catch (e) {
    // Manejar el error, por ejemplo, imprimir el mensaje de error
    print('Error al seleccionar imagen: $e');
    return null; // Retornar null o manejar de otra forma el error según tu lógica
  }
}
