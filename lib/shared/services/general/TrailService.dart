
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class TrailService {
  Future<List<String>> queryTrails() async {
    return await CommonService.getFileContent(GeneralConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME);
  }

  Future<void> saveTrails(List<String> trails) async {
    await CommonService.saveContentToFile(
      GeneralConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME,
      trails,
    );
  }

  Future<void> deleteTrails() async {
    await CommonService.deleteFile(GeneralConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME);
  }
}