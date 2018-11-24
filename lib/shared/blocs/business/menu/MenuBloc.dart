
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/menu/Menu.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {

  final MenuService _menuService = MenuService();

  @override
  MenuState get initialState => MenuState.initial();

  void onWidgetInitialed() {
    dispatch(WidgetInitialed());
  }

  @override
  Stream<MenuState> mapEventToState(MenuState state, MenuEvent event) async* {
    if (event is WidgetInitialed) {
      yield MenuState.loading();

      Menu menu = await _getMenus();

      if (menu != null) {
        yield MenuState.success(menu);
      } else {
        yield MenuState.failure('获取菜单失败');
      }
    }
  }

  Future<Menu> _getMenus() async {
    return _menuService.queryMenus();
  }

}