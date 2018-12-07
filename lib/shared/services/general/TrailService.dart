
import 'dart:convert';

import 'package:north_brain_front_app/shared/constants/business/BusinessConstants.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class TrailService {
  Future<List<String>> queryTrails() async {
    List<String> trails = await CommonService.getFileContent(BusinessConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME);
    print('++++++++');
    trails.map((trail) => print(trail));

    return trails;
  }

  Future<void> saveTrails(String trail) async {
    await CommonService.setSerialNo();

    await CommonService.saveContentToFile(
      BusinessConstants.CONSTANT_SEARCH_TRAIL_FILE_NAME,
      trail,
    );
  }
}