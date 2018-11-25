
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/common/Common.dart';

class BottomWidget extends StatelessWidget {
  final BottomBloc _bottomBloc;

  const BottomWidget({
    Key key,
    @required BottomBloc bottomBloc}):
        _bottomBloc = bottomBloc,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomEvent, BottomState> (
      bloc: _bottomBloc,
      builder: (BuildContext context, BottomState bottomState) {
        return _bottomNavigator(context, _bottomBloc, bottomState);
      },
    );
  }

  Widget _bottomNavigator(BuildContext context, BottomBloc bottomBloc,
      BottomState bottomState) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: bottomState.tabImages[0],
            title: bottomState.tabTitles[0]
        ),
        BottomNavigationBarItem(
            icon: bottomState.tabImages[1],
            title: bottomState.tabTitles[1]
        ),
        BottomNavigationBarItem(
            icon: bottomState.tabImages[2],
            title: bottomState.tabTitles[2]
        ),
        BottomNavigationBarItem(
            icon: bottomState.tabImages[3],
            title: bottomState.tabTitles[3]
        )
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: bottomState.currentIndex,
      iconSize: 24.0,
      onTap: (index) {
        print(index);
        bottomBloc.onTabChanged(index);

        if (index == 1) {
          Application.router.navigateTo(
              context,
              '/trade',
              transition: Transition.transition(),
              transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
          ).then((result) {
          });
        }

        if (index == 2) {
          Application.router.navigateTo(
              context,
              '/setting',
              transition: Transition.transition(),
              transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
          ).then((result) {
          });
        }



        if (index == 3) {
          Application.router.navigateTo(
              context,
              '/profile',
              transition: Transition.transition(),
              transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
          ).then((result) {
          });
        }
      },
    );
  }
}