enum Age {
  child,
  adult,
}

extension AgeExtension on Age {
  bool get isChild {
    return this == Age.child;
  }
}