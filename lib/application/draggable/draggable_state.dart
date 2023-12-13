part of 'draggable_bloc.dart';

@freezed
class DraggableState with _$DraggableState {
  const factory DraggableState({required Offset? offset}) = _DraggableState;

  factory DraggableState.initial() => const DraggableState(
        offset: null,
      );
}
