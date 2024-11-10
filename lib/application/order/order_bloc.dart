import 'package:bloc/bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/domain/rental/model/rental.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';

part 'order_state.dart';

part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderState.initial());
}
