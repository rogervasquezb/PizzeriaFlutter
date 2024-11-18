import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreProducto widget.
  FocusNode? txtNombreProductoFocusNode;
  TextEditingController? txtNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtNombreProductoTextControllerValidator;
  // State field(s) for txtDescripcionProducto widget.
  FocusNode? txtDescripcionProductoFocusNode;
  TextEditingController? txtDescripcionProductoTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionProductoTextControllerValidator;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for DropDownCategoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreProductoFocusNode?.dispose();
    txtNombreProductoTextController?.dispose();

    txtDescripcionProductoFocusNode?.dispose();
    txtDescripcionProductoTextController?.dispose();
  }
}
