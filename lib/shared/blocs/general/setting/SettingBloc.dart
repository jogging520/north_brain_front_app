
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/setting/Setting.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

final Setting defaultSetting = Setting(user: '', dark: false);

class SettingBloc extends Bloc<SettingEvent, SettingState> {

  @override
  SettingState get initialState => SettingState.initial();

  void onWidgetInitialed() {
    dispatch(WidgetInitialed());
  }

  void onPropertyChanged(Setting setting) {
    dispatch(PropertyChanged(setting: setting));
  }

  @override
  Stream<SettingState> mapEventToState(SettingState state, SettingEvent event) async* {
    if (event is WidgetInitialed) {
      yield SettingState.loading();

      Setting setting = await _getSetting();

      if (setting != null) {
        yield SettingState.success(setting);
      }
    }

    if (event is PropertyChanged) {
      yield SettingState.loading();

      bool isSaved = await _saveSetting(event.setting);

      if (isSaved) {
        yield SettingState.success(event.setting);
      } else {
        yield SettingState.failure('保存属性失败。');
      }
    }
  }

  Future<Setting> _getSetting() async {
    Setting setting = await SettingService.getSetting();

    if (setting == null) {
      return defaultSetting;
    }

    return setting;
  }

  Future<bool> _saveSetting(Setting setting) async {
    return await SettingService.saveSetting(setting);
  }
}