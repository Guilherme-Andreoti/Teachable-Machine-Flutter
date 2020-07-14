import 'dart:io'; 
import 'package:image_picker/image_picker.dart';


class CameraHelper {
  static final _picker = ImagePicker();

  static Future<File> pickImageFGallery() async {
    var pickedFile = await _picker.getImage(source: ImageSource.gallery);
    try {
      return File(pickedFile.path);
    } catch (e) {
      return null; 
    }
    
  }

  
  static Future<File> pickImageFCamera() async {
    var pickedFile = await _picker.getImage(source: ImageSource.camera);
    try {
      return File(pickedFile.path);
    } catch (e) {
      return null; 
    }
  }
}