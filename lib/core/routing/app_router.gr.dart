// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [ProductDetailScreen]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    required Product product,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            product: product,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return ProductDetailScreen(
        product: args.product,
        key: args.key,
      );
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    required this.product,
    this.key,
  });

  final Product product;

  final Key? key;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [ViewAllScreen]
class ViewAllRoute extends PageRouteInfo<ViewAllRouteArgs> {
  ViewAllRoute({
    required List<Product> products,
    required String pageTitle,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ViewAllRoute.name,
          args: ViewAllRouteArgs(
            products: products,
            pageTitle: pageTitle,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewAllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ViewAllRouteArgs>();
      return ViewAllScreen(
        products: args.products,
        pageTitle: args.pageTitle,
        key: args.key,
      );
    },
  );
}

class ViewAllRouteArgs {
  const ViewAllRouteArgs({
    required this.products,
    required this.pageTitle,
    this.key,
  });

  final List<Product> products;

  final String pageTitle;

  final Key? key;

  @override
  String toString() {
    return 'ViewAllRouteArgs{products: $products, pageTitle: $pageTitle, key: $key}';
  }
}
