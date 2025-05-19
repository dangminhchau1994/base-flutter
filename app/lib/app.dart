import 'dart:async';
import 'dart:io';
import 'package:app/core/routes/router.dart';
import 'package:app/core/services/app_event.dart';
import 'package:app/core/themes/app_theme.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  late final StreamSubscription<List<ConnectivityResult>>
      _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    _initGlobalEvents();
    WidgetsBinding.instance.addPostFrameCallback((_) => _afterLayout());
  }

  @override
  void dispose() {
    super.dispose();
    _connectivitySubscription.cancel();
  }

  _initGlobalEvents() {
    eventBus.on<LogOutEvent>().listen((e) {});
  }

  void _afterLayout() async {
    _initApp();
    _connectivitySubscription =
        Connectivity().onConnectivityChanged.listen(_handleConnectivity);
  }

  Future<void> _initApp() async {
    if (Platform.isAndroid) FlutterDisplayMode.setHighRefreshRate();
  }

  void _handleConnectivity(List<ConnectivityResult> connectivityResult) {
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
    } else if (connectivityResult.contains(ConnectivityResult.none)) {}
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      ensureScreenSize: true,
      minTextAdapt: true,
      designSize: MediaQuery.of(context).orientation == Orientation.portrait
          ? const Size(375, 812)
          : const Size(812, 375),
      builder: (context, child) => MaterialApp.router(
        theme: myLightTheme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
