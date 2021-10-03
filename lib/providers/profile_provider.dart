import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nepalstock/functions/injection.dart';
import 'package:nepalstock/functions/permission_handler.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:nepalstock/utils/response.dart';
import 'package:rxdart/rxdart.dart';

class ProfileProvider extends ChangeNotifier {
  final PermissionHandler _permissionHandler = inject<PermissionHandler>();
  final ImagePicker _picker = ImagePicker();
  BehaviorSubject<Response>? _profileController;

  File? image;

  Stream<Response>? get streamProfilePic => _profileController?.stream;

  ProfileProvider() {
    _profileController = BehaviorSubject<Response>();
  }

  getImageCamera({String? cropperTitle}) async {
    _profileController?.sink.add(Response.loading(""));
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    image = File(pickedFile?.path ?? "");
    image = await _cropImage(image?.path, title: cropperTitle);
    _profileController?.sink.add(Response.completed(""));
  }

  Future<File?> _cropImage(String? filePath, {String? title}) async {
    return await ImageCropper.cropImage(
      sourcePath: filePath ?? "",
      compressQuality: 100,
      maxHeight: 1080,
      maxWidth: 1080,
      compressFormat: ImageCompressFormat.jpg,
      iosUiSettings: IOSUiSettings(aspectRatioLockEnabled: false, title: title),
      androidUiSettings: AndroidUiSettings(
          lockAspectRatio: false,
          toolbarColor: AppColors.white,
          toolbarTitle: title),
    );
  }

  Future<File> getImageGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    File image = File(pickedFile?.path ?? "");
    return image;
  }

  @override
  void dispose() {
    _profileController?.close();
    super.dispose();
  }
}
