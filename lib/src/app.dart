// ignore_for_file: lines_longer_than_80_chars

import 'package:bacon/src/theme/color_scheme/default.dart';
import 'package:bacon/src/theme/data.dart';
import 'package:bacon/src/theme/shape/default.dart';
import 'package:bacon/src/theme/theme.dart';
import 'package:bacon/src/widgets/bacon_toaster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show
        GlobalCupertinoLocalizations,
        GlobalMaterialLocalizations,
        GlobalWidgetsLocalizations;

enum BaconAppType {
  bacon,
  material,
  cupertino,
}

class BaconApp extends StatefulWidget {
  /// Creates a [BaconApp] providing a [BaconTheme].
  const BaconApp({
    super.key,
    this.navigatorKey,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.initialRoute,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.restorationScopeId,
    this.scrollBehavior = const BaconScrollBehavior(),
    this.pageRouteBuilder,
    this.themeCurve = Curves.linear,
  })  : routeInformationProvider = null,
        routeInformationParser = null,
        routerDelegate = null,
        backButtonDispatcher = null,
        routerConfig = null,
        materialThemeBuilder = null,
        cupertinoThemeBuilder = null,
        type = BaconAppType.bacon;

  /// Creates a [BaconApp] that uses the [Router] instead of a [Navigator].
  const BaconApp.router({
    super.key,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.routeInformationProvider,
    this.routeInformationParser,
    this.routerDelegate,
    this.backButtonDispatcher,
    this.routerConfig,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior = const BaconScrollBehavior(),
    this.themeCurve = Curves.linear,
  })  : navigatorObservers = null,
        navigatorKey = null,
        onGenerateRoute = null,
        home = null,
        onGenerateInitialRoutes = null,
        onUnknownRoute = null,
        routes = null,
        initialRoute = null,
        pageRouteBuilder = null,
        materialThemeBuilder = null,
        cupertinoThemeBuilder = null,
        type = BaconAppType.bacon;

  /// Creates a [MaterialApp] wrapped by a [BaconTheme].
  const BaconApp.material({
    super.key,
    this.navigatorKey,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.initialRoute,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.restorationScopeId,
    this.scrollBehavior = const MaterialScrollBehavior(),
    this.pageRouteBuilder,
    this.themeCurve = Curves.linear,
    this.materialThemeBuilder,
  })  : routeInformationProvider = null,
        routeInformationParser = null,
        routerDelegate = null,
        backButtonDispatcher = null,
        routerConfig = null,
        cupertinoThemeBuilder = null,
        type = BaconAppType.material;

  /// Creates a [MaterialApp] wrapped by a [BaconTheme] that uses the [Router] instead of a [Navigator].
  const BaconApp.materialRouter({
    super.key,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.routeInformationProvider,
    this.routeInformationParser,
    this.routerDelegate,
    this.backButtonDispatcher,
    this.routerConfig,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior = const MaterialScrollBehavior(),
    this.themeCurve = Curves.linear,
    this.materialThemeBuilder,
  })  : navigatorObservers = null,
        navigatorKey = null,
        onGenerateRoute = null,
        home = null,
        onGenerateInitialRoutes = null,
        onUnknownRoute = null,
        routes = null,
        initialRoute = null,
        pageRouteBuilder = null,
        cupertinoThemeBuilder = null,
        type = BaconAppType.material;

  /// Creates a [CupertinoApp] wrapped by a [BaconTheme].
  const BaconApp.cupertino({
    super.key,
    this.navigatorKey,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.initialRoute,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.restorationScopeId,
    this.scrollBehavior = const CupertinoScrollBehavior(),
    this.pageRouteBuilder,
    this.themeCurve = Curves.linear,
    this.cupertinoThemeBuilder,
    this.materialThemeBuilder,
  })  : routeInformationProvider = null,
        routeInformationParser = null,
        routerDelegate = null,
        backButtonDispatcher = null,
        routerConfig = null,
        type = BaconAppType.cupertino;

  /// Creates a [CupertinoApp] wrapped by a [BaconTheme] that uses the [Router] instead of a [Navigator].
  const BaconApp.cupertinoRouter({
    super.key,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.routeInformationProvider,
    this.routeInformationParser,
    this.routerDelegate,
    this.backButtonDispatcher,
    this.routerConfig,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior = const CupertinoScrollBehavior(),
    this.themeCurve = Curves.linear,
    this.cupertinoThemeBuilder,
    this.materialThemeBuilder,
  })  : navigatorObservers = null,
        navigatorKey = null,
        onGenerateRoute = null,
        home = null,
        onGenerateInitialRoutes = null,
        onUnknownRoute = null,
        routes = null,
        initialRoute = null,
        pageRouteBuilder = null,
        type = BaconAppType.cupertino;

  /// The type of app to use.
  ///
  /// If you are going to use only Bacon components, use [BaconAppType.bacon].
  /// If you are going to use also Material components, use [BaconAppType.material].
  /// If you are going to use also Cupertino components, use [BaconAppType/cupertino].
  final BaconAppType type;

  /// Default visual properties, like colors fonts and shapes, for this app's
  /// Bacon widgets.
  ///
  /// A second [darkTheme] [BaconThemeData] value, which is used to provide a
  /// dark version of the user interface can also be specified. [themeMode] will
  /// control which theme will be used if a [darkTheme] is provided.
  ///
  /// The default value of this property is the value of
  /// `BaconThemeData(brightness: Brightness.light)`.
  final BaconThemeData? theme;

  /// The [BaconThemeData] to use when a 'dark mode' is requested by the
  /// system.
  ///
  /// Some host platforms allow the users to select a system-wide 'dark mode',
  /// or the application may want to offer the user the ability to choose a
  /// dark theme just for this application. This is theme that will be used for
  /// such cases. [themeMode] will control which theme will be used.
  ///
  /// This theme should have a [BaconThemeData.brightness] set to
  /// [Brightness.dark].
  ///
  /// Uses [theme] instead when null. Defaults to the value of
  /// [BaconThemeData(brightness: Brightness.light)] when both [darkTheme] and
  /// [theme] are null.
  final BaconThemeData? darkTheme;

  /// Determines which theme will be used by the application if both [theme]
  /// and [darkTheme] are provided.
  ///
  /// If set to [ThemeMode.system], the choice of which theme to use will
  /// be based on the user's system preferences. If the
  /// [MediaQuery.platformBrightnessOf] is [Brightness.light], [theme] will be
  /// used. If it is [Brightness.dark], [darkTheme] will be used (unless it is
  /// null, in which case [theme] will be used.
  ///
  /// If set to [ThemeMode.light] the [theme] will always be used,
  /// regardless of the user's system preference.
  ///
  /// If set to [ThemeMode.dark] the [darkTheme] will be used
  /// regardless of the user's system preference. If [darkTheme] is null
  /// then it will fallback to using [theme].
  ///
  /// The default value is [ThemeMode.system].
  final ThemeMode? themeMode;

  /// {@macro flutter.widgets.widgetsApp.navigatorKey}
  final GlobalKey<NavigatorState>? navigatorKey;

  /// {@macro flutter.widgets.widgetsApp.home}
  final Widget? home;

  /// The application's top-level routing table.
  ///
  /// When a named route is pushed with [Navigator.pushNamed], the route name is
  /// looked up in this map. If the name is present, the associated
  /// [WidgetBuilder] is used to construct a [MaterialPageRoute] that performs
  /// an appropriate transition, including [Hero] animations, to the new route.
  ///
  /// {@macro flutter.widgets.widgetsApp.routes}
  final Map<String, WidgetBuilder>? routes;

  /// {@macro flutter.widgets.widgetsApp.initialRoute}
  final String? initialRoute;

  /// {@macro flutter.widgets.widgetsApp.onGenerateRoute}
  final RouteFactory? onGenerateRoute;

  /// {@macro flutter.widgets.widgetsApp.onGenerateInitialRoutes}
  final InitialRouteListFactory? onGenerateInitialRoutes;

  /// {@macro flutter.widgets.widgetsApp.onUnknownRoute}
  final RouteFactory? onUnknownRoute;

  /// {@macro flutter.widgets.widgetsApp.navigatorObservers}
  final List<NavigatorObserver>? navigatorObservers;

  /// {@macro flutter.widgets.widgetsApp.routeInformationProvider}
  final RouteInformationProvider? routeInformationProvider;

  /// {@macro flutter.widgets.widgetsApp.routeInformationParser}
  final RouteInformationParser<Object>? routeInformationParser;

  /// {@macro flutter.widgets.widgetsApp.routerDelegate}
  final RouterDelegate<Object>? routerDelegate;

  /// {@macro flutter.widgets.widgetsApp.backButtonDispatcher}
  final BackButtonDispatcher? backButtonDispatcher;

  /// {@macro flutter.widgets.widgetsApp.routerConfig}
  final RouterConfig<Object>? routerConfig;

  /// The [PageRoute] generator callback used when the app is navigated to a
  /// named route.
  ///
  /// A [PageRoute] represents the page in a [Navigator], so that it can
  /// correctly animate between pages, and to represent the "return value" of
  /// a route (e.g. which button a user selected in a modal dialog).
  ///
  /// This callback can be used, for example, to specify that a
  /// [MaterialPageRoute] or a [CupertinoPageRoute] should be used for building
  /// page transitions.
  ///
  /// The [PageRouteFactory] type is generic, meaning the provided function must
  /// itself be generic. For example (with special emphasis on the `<T>` at the
  /// start of the closure):
  ///
  /// ```dart
  /// pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) => PageRouteBuilder<T>(
  ///   settings: settings,
  ///   pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => builder(context),
  /// ),
  /// ```
  final PageRouteFactory? pageRouteBuilder;

  /// {@macro flutter.widgets.widgetsApp.builder}
  final TransitionBuilder? builder;

  /// {@macro flutter.widgets.widgetsApp.title}
  ///
  /// This value is passed unmodified to [WidgetsApp.title].
  final String title;

  /// {@macro flutter.widgets.widgetsApp.onGenerateTitle}
  ///
  /// This value is passed unmodified to [WidgetsApp.onGenerateTitle].
  final GenerateAppTitle? onGenerateTitle;

  /// {@macro flutter.widgets.widgetsApp.color}
  final Color? color;

  /// {@macro flutter.widgets.widgetsApp.locale}
  final Locale? locale;

  /// {@macro flutter.widgets.widgetsApp.localizationsDelegates}
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;

  /// {@macro flutter.widgets.widgetsApp.localeListResolutionCallback}
  ///
  /// This callback is passed along to the [WidgetsApp] built by this widget.
  final LocaleListResolutionCallback? localeListResolutionCallback;

  /// {@macro flutter.widgets.LocaleResolutionCallback}
  ///
  /// This callback is passed along to the [WidgetsApp] built by this widget.
  final LocaleResolutionCallback? localeResolutionCallback;

  /// {@macro flutter.widgets.widgetsApp.supportedLocales}
  ///
  /// It is passed along unmodified to the [WidgetsApp] built by this widget.
  final Iterable<Locale> supportedLocales;

  /// Turns on a performance overlay.
  ///
  /// See also:
  ///
  ///  * <https://flutter.dev/debugging/#performanceoverlay>
  final bool showPerformanceOverlay;

  /// Turns on checkerboarding of raster cache images.
  final bool checkerboardRasterCacheImages;

  /// Turns on checkerboarding of layers rendered to offscreen bitmaps.
  final bool checkerboardOffscreenLayers;

  /// Turns on an overlay that shows the accessibility information
  /// reported by the framework.
  final bool showSemanticsDebugger;

  /// {@macro flutter.widgets.widgetsApp.debugShowCheckedModeBanner}
  final bool debugShowCheckedModeBanner;

  /// {@macro flutter.widgets.widgetsApp.shortcuts}
  /// {@tool snippet}
  /// This example shows how to add a single shortcut for
  /// [m.LogicalKeyboardKey.select] to the default shortcuts without needing to
  /// add your own [Shortcuts] widget.
  ///
  /// Alternatively, you could insert a [Shortcuts] widget with just the mapping
  /// you want to add between the [BaconApp] and its child and get the same
  /// effect.
  ///
  /// ```dart
  /// Widget build(BuildContext context) {
  ///   return BaconApp(
  ///     shortcuts: <ShortcutActivator, Intent>{
  ///       ... WidgetsApp.defaultShortcuts,
  ///       const SingleActivator(LogicalKeyboardKey.select):
  ///         const ActivateIntent(),
  ///     },
  ///     color: const Color(0xFFFF0000),
  ///     builder: (BuildContext context, Widget? child) {
  ///       return const Placeholder();
  ///     },
  ///   );
  /// }
  /// ```
  /// {@end-tool}
  /// {@macro flutter.widgets.widgetsApp.shortcuts.seeAlso}
  final Map<ShortcutActivator, Intent>? shortcuts;

  /// {@macro flutter.widgets.widgetsApp.actions}
  /// {@tool snippet}
  /// This example shows how to add a single action handling an
  /// [ActivateAction] to the default actions without needing to
  /// add your own [Actions] widget.
  ///
  /// Alternatively, you could insert a [Actions] widget with just the mapping
  /// you want to add between the [BaconApp] and its child and get the same
  /// effect.
  ///
  /// ```dart
  /// Widget build(BuildContext context) {
  ///   return BaconApp(
  ///     actions: <Type, Action<Intent>>{
  ///       ... WidgetsApp.defaultActions,
  ///       ActivateAction: CallbackAction(
  ///         onInvoke: (Intent intent) {
  ///           // Do something here...
  ///           return null;
  ///         },
  ///       ),
  ///     },
  ///     color: const Color(0xFFFF0000),
  ///     builder: (BuildContext context, Widget? child) {
  ///       return const Placeholder();
  ///     },
  ///   );
  /// }
  /// ```
  /// {@end-tool}
  /// {@macro flutter.widgets.widgetsApp.actions.seeAlso}
  final Map<Type, Action<Intent>>? actions;

  /// {@macro flutter.widgets.widgetsApp.restorationScopeId}
  final String? restorationScopeId;

  /// {@macro flutter.material.materialApp.scrollBehavior}
  ///
  /// See also:
  ///
  ///  * [ScrollConfiguration], which controls how [Scrollable] widgets behave
  ///    in a subtree.
  final ScrollBehavior scrollBehavior;

  /// The curve used to animated from one [BaconThemeData] to another, defaults
  /// to [Curves.linear].
  final Curve themeCurve;

  final ThemeData Function(BuildContext context, ThemeData theme)?
      materialThemeBuilder;

  final CupertinoThemeData Function(
    BuildContext context,
    CupertinoThemeData theme,
  )? cupertinoThemeBuilder;

  @override
  State<BaconApp> createState() => _BaconAppState();
}

class _BaconAppState extends State<BaconApp> {
  final heroController = HeroController();

  bool get usesRouter =>
      widget.routerDelegate != null || widget.routerConfig != null;

  /// Combine the Localizations for Material, Cupertino with the ones
  /// contributed by the localizationsDelegates parameter, if any.
  ///
  /// The default value for the localizationsDelegates
  /// ```
  ///  DefaultMaterialLocalizations.delegate,
  ///  DefaultCupertinoLocalizations.delegate,
  ///  DefaultWidgetsLocalizations.delegate
  /// ```
  Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates sync* {
    final localizationsDelegates = widget.localizationsDelegates;
    if (localizationsDelegates != null) {
      yield* localizationsDelegates;
    }
    yield GlobalMaterialLocalizations.delegate;
    yield GlobalCupertinoLocalizations.delegate;
    yield GlobalWidgetsLocalizations.delegate;
  }

  @override
  void dispose() {
    heroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: widget.scrollBehavior,
      child: HeroControllerScope(
        controller: heroController,
        child: BaconAnimatedTheme(
          data: theme(context),
          curve: widget.themeCurve,
          child: _buildApp(context),
        ),
      ),
    );
  }

  BaconThemeData theme(BuildContext context) {
    final mode = widget.themeMode ?? ThemeMode.system;
    final platformBrightness = MediaQuery.platformBrightnessOf(context);

    final useDarkStyle = mode == ThemeMode.dark ||
        (mode == ThemeMode.system && platformBrightness == Brightness.dark);

    final data = () {
      late BaconThemeData result;
      if (useDarkStyle) {
        result = widget.darkTheme ??
            widget.theme ??
            BaconThemeData(
              colorScheme: BaconDefaultColorScheme.dark(),
              shape: widget.theme?.shape ??
                  const BaconDefaultShapeTheme.defaultShape(),
              brightness: Brightness.dark,
            );
      } else {
        result = widget.theme ??
            BaconThemeData(
              colorScheme: BaconDefaultColorScheme.light(),
              shape: widget.theme?.shape ??
                  const BaconDefaultShapeTheme.defaultShape(),
              brightness: Brightness.light,
            );
      }
      return result;
    }();
    return data;
  }

  ThemeData materialTheme(BuildContext context) {
    final themeData = theme(context);
    final mTheme = ThemeData(
      fontFamily: 'Geist',
      package: 'bacon',
      extensions: themeData.extensions,
      // colorScheme: ColorScheme(
      //   brightness: themeData.brightness,
      //   primary: themeData.colorScheme.primary,
      //   onPrimary: themeData.colorScheme.primaryForeground,
      //   secondary: themeData.colorScheme.secondary,
      //   onSecondary: themeData.colorScheme.secondaryForeground,
      //   error: themeData.colorScheme.destructive,
      //   onError: themeData.colorScheme.destructiveForeground,
      //   background: themeData.colorScheme.background,
      //   onBackground: themeData.colorScheme.foreground,
      //   surface: themeData.colorScheme.card,
      //   onSurface: themeData.colorScheme.cardForeground,
      // ),
      // scaffoldBackgroundColor: themeData.colorScheme.background,
      brightness: themeData.brightness,
      // dividerTheme: DividerThemeData(
      //   color: themeData.colorScheme.,
      //   thickness: 1,
      // ),
    );
    if (widget.materialThemeBuilder == null) {
      return mTheme;
    }
    return widget.materialThemeBuilder!(context, mTheme);
  }

  CupertinoThemeData cupertinoTheme(BuildContext context) {
    final themeData = theme(context);
    final cTheme = CupertinoThemeData(
      // primaryColor: themeData.colorScheme.contentBrand,
      // primaryContrastingColor: themeData.colorScheme.primaryForeground,
      // scaffoldBackgroundColor: themeData.colorScheme.background,
      // barBackgroundColor: themeData.colorScheme.primary,
      brightness: themeData.brightness,
    );

    if (widget.cupertinoThemeBuilder == null) {
      return cTheme;
    }
    return widget.cupertinoThemeBuilder!(context, cTheme);
  }

  Widget _builder(BuildContext context, Widget? child) {
    return BaconToaster(
      child: widget.builder != null
          ? Builder(
              builder: (BuildContext context) {
                // Why are we surrounding a builder with a builder?
                //
                // The widget.builder may contain code that invokes
                // Theme.of(), which should return the theme we selected
                // above in AnimatedTheme. However, if we invoke
                // widget.builder() directly as the child of AnimatedTheme
                // then there is no Context separating them, and the
                // widget.builder() will not find the theme. Therefore, we
                // surround widget.builder with yet another builder so that
                // a context separates them and Theme.of() correctly
                // resolves to the theme we passed to AnimatedTheme.
                return widget.builder!(context, child);
              },
            )
          : child ?? const SizedBox.shrink(),
    );
  }

  Widget _buildApp(BuildContext context) {
    switch (widget.type) {
      case BaconAppType.bacon:
        if (usesRouter) {
          return AnimatedTheme(
            data: materialTheme(context),
            child: WidgetsApp.router(
              key: GlobalObjectKey(this),
              routeInformationProvider: widget.routeInformationProvider,
              routeInformationParser: widget.routeInformationParser,
              routerDelegate: widget.routerDelegate,
              routerConfig: widget.routerConfig,
              backButtonDispatcher: widget.backButtonDispatcher,
              builder: _builder,
              title: widget.title,
              onGenerateTitle: widget.onGenerateTitle,
              color: widget.color ?? Colors.blue,
              locale: widget.locale,
              localeResolutionCallback: widget.localeResolutionCallback,
              localeListResolutionCallback: widget.localeListResolutionCallback,
              supportedLocales: widget.supportedLocales,
              showPerformanceOverlay: widget.showPerformanceOverlay,
              checkerboardRasterCacheImages:
                  widget.checkerboardRasterCacheImages,
              checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
              showSemanticsDebugger: widget.showSemanticsDebugger,
              debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
              shortcuts: widget.shortcuts,
              actions: widget.actions,
              restorationScopeId: widget.restorationScopeId,
              localizationsDelegates: localizationsDelegates,
            ),
          );
        }

        return AnimatedTheme(
          data: materialTheme(context),
          child: WidgetsApp(
            key: GlobalObjectKey(this),
            navigatorKey: widget.navigatorKey,
            navigatorObservers: widget.navigatorObservers!,
            home: widget.home,
            routes: widget.routes!,
            initialRoute: widget.initialRoute,
            onGenerateRoute: widget.onGenerateRoute,
            onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
            onUnknownRoute: widget.onUnknownRoute,
            builder: _builder,
            title: widget.title,
            onGenerateTitle: widget.onGenerateTitle,
            color: widget.color ?? Colors.blue,
            locale: widget.locale,
            localeResolutionCallback: widget.localeResolutionCallback,
            localeListResolutionCallback: widget.localeListResolutionCallback,
            supportedLocales: widget.supportedLocales,
            showPerformanceOverlay: widget.showPerformanceOverlay,
            checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
            checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
            showSemanticsDebugger: widget.showSemanticsDebugger,
            debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
            shortcuts: widget.shortcuts,
            actions: widget.actions,
            restorationScopeId: widget.restorationScopeId,
            localizationsDelegates: localizationsDelegates,
            pageRouteBuilder: widget.pageRouteBuilder ??
                <T>(RouteSettings settings, WidgetBuilder builder) {
                  return MaterialPageRoute<T>(
                    settings: settings,
                    builder: builder,
                  );
                },
          ),
        );
      case BaconAppType.material:
        if (usesRouter) {
          return MaterialApp.router(
            routeInformationProvider: widget.routeInformationProvider,
            routeInformationParser: widget.routeInformationParser,
            routerDelegate: widget.routerDelegate,
            routerConfig: widget.routerConfig,
            backButtonDispatcher: widget.backButtonDispatcher,
            builder: _builder,
            theme: materialTheme(context),
            title: widget.title,
            onGenerateTitle: widget.onGenerateTitle,
            color: widget.color ?? Colors.blue,
            locale: widget.locale,
            localeResolutionCallback: widget.localeResolutionCallback,
            localeListResolutionCallback: widget.localeListResolutionCallback,
            supportedLocales: widget.supportedLocales,
            showPerformanceOverlay: widget.showPerformanceOverlay,
            checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
            checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
            showSemanticsDebugger: widget.showSemanticsDebugger,
            debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
            shortcuts: widget.shortcuts,
            actions: widget.actions,
            restorationScopeId: widget.restorationScopeId,
            localizationsDelegates: localizationsDelegates,
          );
        }
        return MaterialApp(
          navigatorKey: widget.navigatorKey,
          navigatorObservers: widget.navigatorObservers!,
          home: widget.home,
          routes: widget.routes!,
          initialRoute: widget.initialRoute,
          onGenerateRoute: widget.onGenerateRoute,
          onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
          onUnknownRoute: widget.onUnknownRoute,
          builder: _builder,
          theme: materialTheme(context),
          title: widget.title,
          onGenerateTitle: widget.onGenerateTitle,
          color: widget.color ?? Colors.blue,
          locale: widget.locale,
          localeResolutionCallback: widget.localeResolutionCallback,
          localeListResolutionCallback: widget.localeListResolutionCallback,
          supportedLocales: widget.supportedLocales,
          showPerformanceOverlay: widget.showPerformanceOverlay,
          checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
          checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
          showSemanticsDebugger: widget.showSemanticsDebugger,
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
          shortcuts: widget.shortcuts,
          actions: widget.actions,
          restorationScopeId: widget.restorationScopeId,
          localizationsDelegates: localizationsDelegates,
        );

      case BaconAppType.cupertino:
        if (usesRouter) {
          return AnimatedTheme(
            data: materialTheme(context),
            child: CupertinoApp.router(
              routeInformationProvider: widget.routeInformationProvider,
              routeInformationParser: widget.routeInformationParser,
              routerDelegate: widget.routerDelegate,
              routerConfig: widget.routerConfig,
              backButtonDispatcher: widget.backButtonDispatcher,
              builder: _builder,
              theme: cupertinoTheme(context),
              title: widget.title,
              onGenerateTitle: widget.onGenerateTitle,
              color: widget.color ?? Colors.blue,
              locale: widget.locale,
              localeResolutionCallback: widget.localeResolutionCallback,
              localeListResolutionCallback: widget.localeListResolutionCallback,
              supportedLocales: widget.supportedLocales,
              showPerformanceOverlay: widget.showPerformanceOverlay,
              checkerboardRasterCacheImages:
                  widget.checkerboardRasterCacheImages,
              checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
              showSemanticsDebugger: widget.showSemanticsDebugger,
              debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
              shortcuts: widget.shortcuts,
              actions: widget.actions,
              restorationScopeId: widget.restorationScopeId,
              localizationsDelegates: localizationsDelegates,
            ),
          );
        }
        return AnimatedTheme(
          data: materialTheme(context),
          child: CupertinoApp(
            navigatorKey: widget.navigatorKey,
            navigatorObservers: widget.navigatorObservers!,
            home: widget.home,
            routes: widget.routes!,
            initialRoute: widget.initialRoute,
            onGenerateRoute: widget.onGenerateRoute,
            onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
            onUnknownRoute: widget.onUnknownRoute,
            builder: _builder,
            theme: cupertinoTheme(context),
            title: widget.title,
            onGenerateTitle: widget.onGenerateTitle,
            color: widget.color ?? Colors.blue,
            locale: widget.locale,
            localeResolutionCallback: widget.localeResolutionCallback,
            localeListResolutionCallback: widget.localeListResolutionCallback,
            supportedLocales: widget.supportedLocales,
            showPerformanceOverlay: widget.showPerformanceOverlay,
            checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
            checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
            showSemanticsDebugger: widget.showSemanticsDebugger,
            debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
            shortcuts: widget.shortcuts,
            actions: widget.actions,
            restorationScopeId: widget.restorationScopeId,
            localizationsDelegates: localizationsDelegates,
          ),
        );
    }
  }
}

/// Describes how [Scrollable] widgets behave for [BaconApp]s.
///
/// {@macro flutter.widgets.scrollBehavior}
///
/// When using the desktop platform, if the [Scrollable] widget scrolls in the
/// [Axis.vertical], a [Scrollbar] is applied.
///
/// See also:
///
///  * [ScrollBehavior], the default scrolling behavior extended by this class.
/// By default we will use [CupertinoScrollbar] for iOS and macOS platforms
/// for windows and Linux [Scrollbar]
/// for Android and Fuchsia we will return the child
class BaconScrollBehavior extends ScrollBehavior {
  /// Creates a BaconScrollBehavior that decorates [Scrollable]s with
  /// [Scrollbar]s based on the current platform and provided
  /// [ScrollableDetails].
  const BaconScrollBehavior();

  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    switch (axisDirectionToAxis(details.direction)) {
      case Axis.horizontal:
        return child;
      case Axis.vertical:
        switch (getPlatform(context)) {
          case TargetPlatform.macOS:
          case TargetPlatform.iOS:
            return CupertinoScrollbar(
              controller: details.controller,
              child: child,
            );
          case TargetPlatform.linux:
          case TargetPlatform.windows:
            return Scrollbar(
              controller: details.controller,
              child: child,
            );
          case TargetPlatform.android:
          case TargetPlatform.fuchsia:
            return child;
        }
    }
  }
}
