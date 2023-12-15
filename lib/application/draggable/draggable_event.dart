part of 'draggable_bloc.dart';

@freezed
class DraggableEvent with _$DraggableEvent {
  const factory DraggableEvent.init() = _Init;
  const factory DraggableEvent.updatePosition(Offset offset) = _UpdatePosition;
}
