import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
