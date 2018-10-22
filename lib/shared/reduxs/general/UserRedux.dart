
import 'package:redux/redux.dart';
import 'package:north_brain_front_app/shared/models/general/User.dart';

/// redux 的 combineReducers, 通过 TypedReducer 将 UserUpdateAction 与 reducers 关联起来
final UserReducer = combineReducers<User>([
  TypedReducer<User, UserUpdateAction>(_updateLoaded),
]);

/// 如果有 UserUpdateAction 发起一个请求时
/// 就会调用到 _updateLoaded
/// _updateLoaded 这里接受一个新的user，并返回
User _updateLoaded(User user, action) {
  user = action.user;
  return user;
}

///定一个 UserUpdateAction ，用于发起 user 的的改变
///类名随你喜欢定义，只要通过上面TypedReducer绑定就好
class UserUpdateAction {
  final User user;

  UserUpdateAction(this.user);
}
