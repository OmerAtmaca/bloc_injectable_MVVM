import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tofas_spor_okullari/app/routing/app_router.dart';
import 'package:tofas_spor_okullari/presentation/home/home_bloc.dart';
import 'package:tofas_spor_okullari/presentation/utils/custom_colors.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../../domain/events/update_home_event.dart';
import '../../domain/events/update_side_event.dart';
import '../common_widgets/custom_bottom_navigation.dart';
import '../utils/bloc_common.dart';
import '../utils/bus_helper.dart';
import 'components/form_field.dart';
import 'main_tab_bloc.dart';

class MainTabPage extends StatelessWidget {
  MainTabPage({super.key});

  final pageController = PageController();

  final navigator = inject<AppNavigator>();

  final blocMain = inject<MainTabBloc>();

  final blocHome = inject<HomeBloc>();

  final _focusNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) => AutoTabsRouter.pageView(
      routes: const [HomePath(), TabUcPath()],
      physics: const NeverScrollableScrollPhysics(),
      builder: (context, child, _) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => blocMain..getDPName(),
              ),
              BlocProvider(
                create: (context) => blocHome,
              ),
            ],
            child: BlocConsumer<MainTabBloc, MainTabState>(
                listener: (context, state) {
              if (state.stateType == StateType.success) {}
            }, builder: (context, state) {
              BusHelper.instance?.eventBus
                  .on<UpdateSideEvent>()
                  .listen((event) {
                blocMain.updateSide(event.side);
              });
              return Scaffold(
                backgroundColor: state.isUpdateSide
                    ? CustomColors.mirage
                    : CustomColors.geyser,
                body: child,
                bottomNavigationBar: BottomAppBar(
                    shape: const CircularNotchedRectangle(),
                    notchMargin: 10,
                    color: CustomColors.astral,
                    child: CustomBottomNavigation(
                      onPositionChanged: (position) {
                        _focusNode.unfocus();
                        context.tabsRouter.setActiveIndex(position);
                      },
                    )),
                // appBar: AppBar(
                //   backgroundColor: CustomColors.apple,
                //   automaticallyImplyLeading: false,
                //   title:
                //       Text(state.dpName, style: const TextStyle(fontSize: 16)),
                //   actions: [
                //     IconButton(
                //         onPressed: () {
                //           BusHelper.instance?.close();
                //           blocMain.logout();
                //           navigator.pushRouteReplace(LoginPath());
                //         },
                //         icon: const Icon(Icons.logout))
                //   ],
                // ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                floatingActionButton: SizedBox(
                  height: 80,
                  width: 80,
                  child: FloatingActionButton(
                    backgroundColor: CustomColors.astral,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topLeft: Radius.circular(100))),
                    onPressed: () {
                      print(state.dpName);
                      showCupertinoModalBottomSheet(
                              topRadius: const Radius.circular(15),
                              enableDrag: true,
                              useRootNavigator: true,
                              isDismissible: true,
                              context: context,
                              builder: (context) => const FormFieldWidget())
                          .then((value) {
                        if (value != null) {
                          if (context.mounted) {
                            context.read<MainTabBloc>().addData(model: value);
                            BusHelper.instance?.eventBus
                                .fire(UpdateHomeEvent(true));
                          }
                        }
                      });
                    },
                    child: const Icon(Icons.add_outlined,
                        color: CustomColors.danube),
                  ),
                ),
              );
            }),
          ));
}
