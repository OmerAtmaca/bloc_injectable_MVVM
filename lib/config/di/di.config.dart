// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:dio/dio.dart' as _i18;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:tofas_spor_okullari/app/routing/app_navigator.dart' as _i13;
import 'package:tofas_spor_okullari/app/routing/app_navigator_auto_route.dart'
    as _i26;
import 'package:tofas_spor_okullari/app/routing/app_router.dart' as _i3;
import 'package:tofas_spor_okullari/config/di/blocs_module.dart' as _i33;
import 'package:tofas_spor_okullari/config/di/firebase_module.dart' as _i29;
import 'package:tofas_spor_okullari/config/di/main_module.dart' as _i25;
import 'package:tofas_spor_okullari/config/di/networking_service.dart' as _i34;
import 'package:tofas_spor_okullari/config/di/repository_module.dart' as _i30;
import 'package:tofas_spor_okullari/config/di/service_module.dart' as _i28;
import 'package:tofas_spor_okullari/data/models/services/key_value_store.dart'
    as _i15;
import 'package:tofas_spor_okullari/data/models/services/notification_service.dart'
    as _i22;
import 'package:tofas_spor_okullari/data/models/services/user_model_local_storage_service.dart'
    as _i16;
import 'package:tofas_spor_okullari/data/models/utils/device_info.dart' as _i4;
import 'package:tofas_spor_okullari/data/repositories/auth_repository.dart'
    as _i17;
import 'package:tofas_spor_okullari/data/repositories/firebase_repository.dart'
    as _i8;
import 'package:tofas_spor_okullari/domain/repositories/auth_repository_impl.dart'
    as _i32;
import 'package:tofas_spor_okullari/domain/repositories/firebase_repository_Impl.dart'
    as _i31;
import 'package:tofas_spor_okullari/presentation/home/home_bloc.dart' as _i19;
import 'package:tofas_spor_okullari/presentation/login/login_bloc.dart' as _i20;
import 'package:tofas_spor_okullari/presentation/main_tab/main_tab_bloc.dart'
    as _i21;
import 'package:tofas_spor_okullari/presentation/onboarding/onboarding_bloc.dart'
    as _i23;
import 'package:tofas_spor_okullari/presentation/splash/splash_bloc.dart'
    as _i24;
import 'package:tofas_spor_okullari/presentation/tab_3/tab_3_bloc.dart' as _i12;
import 'package:tofas_spor_okullari/presentation/tab_4/tab_4_bloc.dart' as _i11;
import 'package:tofas_spor_okullari/presentation/utils/bottom_sheet_helper.dart'
    as _i14;
import 'package:tofas_spor_okullari/service/shared_preferences_key_value_store.dart'
    as _i27;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final mainModule = _$MainModule(this);
    final serviceModule = _$ServiceModule(this);
    final firebaseModule = _$FirebaseModule();
    final repositoryModule = _$RepositoryModule(this);
    final blocModule = _$BlocModule(this);
    final networkingModule = _$NetworkingModule();
    gh.lazySingleton<_i3.AppRouter>(() => mainModule.getAppRouter());
    await gh.singletonAsync<_i4.DeviceInfo>(
      () => serviceModule.getDeviceInfo(),
      preResolve: true,
    );
    gh.factory<_i5.FirebaseAuth>(() => firebaseModule.auth);
    gh.factory<_i6.FirebaseFirestore>(() => firebaseModule.store);
    gh.singleton<_i7.FirebaseMessaging>(
        () => firebaseModule.getFirebaseMessaging());
    gh.lazySingleton<_i8.FirebaseRepository>(
        () => repositoryModule.firebaseRepository);
    gh.singleton<_i9.FlutterLocalNotificationsPlugin>(
        () => serviceModule.getFlutterLocalNotificationPlugin());
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => mainModule.getSharedPreferences(),
      preResolve: true,
    );
    gh.factory<_i11.TabDortBloc>(() => blocModule.tabDortBloc);
    gh.factory<_i12.TabUcBloc>(() => blocModule.tabUcBloc);
    gh.singleton<_i13.AppNavigator>(() => mainModule.navigator);
    gh.singleton<_i14.BottomSheetHelper>(() => serviceModule.bottomSheetHelper);
    gh.factory<_i15.KeyValueStore>(
        () => mainModule.sharedPreferencesKeyValueStore);
    gh.singleton<_i16.UserModelLocalStorageService>(
        () => serviceModule.localStorageService);
    gh.lazySingleton<_i17.AuthRepository>(
        () => repositoryModule.authRepository);
    gh.lazySingleton<_i18.Dio>(() => networkingModule.getDio(
          gh<_i16.UserModelLocalStorageService>(),
          gh<_i4.DeviceInfo>(),
        ));
    gh.factory<_i19.HomeBloc>(() => blocModule.homeBloc);
    gh.factory<_i20.LoginBloc>(() => blocModule.loginBloc);
    gh.factory<_i21.MainTabBloc>(() => blocModule.mainTabBloc);
    gh.singleton<_i22.NotificationService>(
        () => serviceModule.notificationService);
    gh.factory<_i23.OnBoardingBloc>(() => blocModule.onBoardingBloc);
    gh.factory<_i24.SplashBloc>(() => blocModule.splashBloc);
    return this;
  }
}

class _$MainModule extends _i25.MainModule {
  _$MainModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i26.AutoRouteNavigator get navigator =>
      _i26.AutoRouteNavigator(_getIt<_i3.AppRouter>());

  @override
  _i27.SharedPreferencesKeyValueStore get sharedPreferencesKeyValueStore =>
      _i27.SharedPreferencesKeyValueStore(_getIt<_i10.SharedPreferences>());
}

class _$ServiceModule extends _i28.ServiceModule {
  _$ServiceModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i14.BottomSheetHelper get bottomSheetHelper =>
      _i14.BottomSheetHelper(_getIt<_i13.AppNavigator>());

  @override
  _i16.UserModelLocalStorageService get localStorageService =>
      _i16.UserModelLocalStorageService(_getIt<_i15.KeyValueStore>());

  @override
  _i22.NotificationService get notificationService => _i22.NotificationService(
        _getIt<_i7.FirebaseMessaging>(),
        _getIt<_i9.FlutterLocalNotificationsPlugin>(),
        _getIt<_i17.AuthRepository>(),
      );
}

class _$FirebaseModule extends _i29.FirebaseModule {}

class _$RepositoryModule extends _i30.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i31.FirebaseRepositoryImpl get firebaseRepository =>
      _i31.FirebaseRepositoryImpl(_getIt<_i6.FirebaseFirestore>());

  @override
  _i32.AuthRepositoryImpl get authRepository => _i32.AuthRepositoryImpl(
        _getIt<_i6.FirebaseFirestore>(),
        _getIt<_i5.FirebaseAuth>(),
        _getIt<_i16.UserModelLocalStorageService>(),
      );
}

class _$BlocModule extends _i33.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i11.TabDortBloc get tabDortBloc =>
      _i11.TabDortBloc(_getIt<_i8.FirebaseRepository>());

  @override
  _i12.TabUcBloc get tabUcBloc =>
      _i12.TabUcBloc(_getIt<_i8.FirebaseRepository>());

  @override
  _i19.HomeBloc get homeBloc => _i19.HomeBloc(
        _getIt<_i8.FirebaseRepository>(),
        _getIt<_i16.UserModelLocalStorageService>(),
      );

  @override
  _i20.LoginBloc get loginBloc => _i20.LoginBloc(_getIt<_i17.AuthRepository>());

  @override
  _i21.MainTabBloc get mainTabBloc => _i21.MainTabBloc(
        _getIt<_i8.FirebaseRepository>(),
        _getIt<_i17.AuthRepository>(),
        _getIt<_i16.UserModelLocalStorageService>(),
      );

  @override
  _i23.OnBoardingBloc get onBoardingBloc =>
      _i23.OnBoardingBloc(_getIt<_i16.UserModelLocalStorageService>());

  @override
  _i24.SplashBloc get splashBloc => _i24.SplashBloc(
        _getIt<_i17.AuthRepository>(),
        _getIt<_i8.FirebaseRepository>(),
      );
}

class _$NetworkingModule extends _i34.NetworkingModule {}
