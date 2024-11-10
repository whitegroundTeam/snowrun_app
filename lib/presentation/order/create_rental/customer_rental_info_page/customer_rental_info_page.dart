import 'package:doortoout/application/core/select_button/select_button_bloc.dart';
import 'package:doortoout/application/rental/actor/rental_actor_bloc.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/order/rental/rental_contact.dart';
import 'package:doortoout/presentation/order/rental/rental_period.dart';
import 'package:doortoout/presentation/order/rental/rental_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerRentalInfoPage extends StatefulWidget {
  final String? representativePhoneNumber;
  final String? representativeEmail;

  const CustomerRentalInfoPage(
      {super.key, this.representativePhoneNumber, this.representativeEmail});

  @override
  State createState() => CustomerRentalInfoPageState();
}

class CustomerRentalInfoPageState extends State<CustomerRentalInfoPage> {
  final nextButtonBloc = getIt<SelectButtonBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentalActorBloc, RentalActorState>(
      bloc: context.read<RentalActorBloc>(),
      builder: (context, state) {
        nextButtonBloc.add(
            SelectButtonEvent.setActive(isActive: state.isValidRentalInfo));
        return Stack(
          children: [
            CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 12,
                    ),
                    child: RentalPeroid(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Visibility(
                    visible: state.isValidPeriod,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 12,
                      ),
                      child: RentalInfo(),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Visibility(
                    visible: state.isValidPeriod && state.isValidAge && state.isValidGender && state.isValidBodySpec,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 12,
                      ),
                      child: RentalContact(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
