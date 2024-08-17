import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/current_user_cubit/current_user_cubit.dart';
import 'package:shopping_app/application/delivery/deliveries_cubit/deliveries_cubit.dart';
import 'package:shopping_app/application/delivery/delivery_cubit/delivery_cubit.dart';
import 'package:shopping_app/application/location/location_bloc/location_bloc.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';

@RoutePage()
class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: '',
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<CurrentUserCubit>()..getCurrentSavedUser(),
          ),
          BlocProvider(
            create: (context) => getIt<DeliveryCubit>(),
          ),
          BlocProvider<LocationBloc>(
            create: (context) => LocationBloc(),
          ),
        ],
        child: BlocListener<CurrentUserCubit, CurrentUserState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              logoutSuccess: (value) {
                context.router.replaceNamed('/sign-in');
              },
            );
          },
          child: BlocProvider<DeliveriesCubit>(
            create: (context) =>
                getIt<DeliveriesCubit>()..getDeliveries(activeDeliveries: true),
            child: BlocListener<DeliveriesCubit, DeliveriesState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () => const SizedBox(),
                  success: (value) {
                    context.router.replaceNamed('/active-deliveries');
                  },
                  failed: (value) =>
                      context.router.replaceNamed('/initiated-deliveries'),
                );
              },
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
