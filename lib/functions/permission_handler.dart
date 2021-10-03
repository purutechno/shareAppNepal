import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  Future<bool> handlePermission(
      {bool camera = false,
        bool gallery = false,
        bool microphone = false}) async {
    if (camera && microphone) {
      var cameraStatus = await Permission.camera.status;
      var microphoneStatus = await Permission.microphone.status;
      if (cameraStatus.isGranted && microphoneStatus.isGranted) {
      } else {
        await openAppSettings();
      }
    } else if (camera) {
      var status = await Permission.camera.status;
      switch (status) {
        case (PermissionStatus.denied):
          await openAppSettings();
          break;
        case (PermissionStatus.granted):
        case (PermissionStatus.permanentlyDenied):
          await openAppSettings();
          break;
        case (PermissionStatus.restricted):
          await openAppSettings();
          break;
        default:
      }
    } else if (gallery) {
      var status = await Permission.phone.status;
      switch (status) {
        case (PermissionStatus.denied):
          await openAppSettings();
          break;
        case (PermissionStatus.granted):
        case (PermissionStatus.permanentlyDenied):
          await openAppSettings();
          break;
        case (PermissionStatus.restricted):
          await openAppSettings();
          break;
        default:
      }
    }
    return true;
  }
}
