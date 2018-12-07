
import 'dart:convert';

import 'package:north_brain_front_app/shared/constants/business/BusinessConstants.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class TrailService {
  Future<List<String>> queryTrails() async {
    return await CommonService.getFileContent(BusinessConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME);
  }

  Future<void> saveTrails(String trail) async {
    await CommonService.setSerialNo();

    await CommonService.saveContentToFile(
      BusinessConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME,
      trail,
    );
  }
}