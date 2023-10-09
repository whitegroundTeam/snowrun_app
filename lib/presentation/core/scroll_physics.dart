import 'package:flutter/widgets.dart';

const bouncingScrollPhysics = BouncingScrollPhysics(
  parent: AlwaysScrollableScrollPhysics(),
);

const neverScrollableScrollPhysics = NeverScrollableScrollPhysics();