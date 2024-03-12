import 'package:_fe_analyzer_shared/src/macros/api.dart';

/// Macro that adds a `String` getter called `x` that return `OK`.
macro class DeclareX implements ClassDeclarationsMacro  {
  const DeclareX();

  @override
  Future<void> buildDeclarationsForClass(
      _, MemberDeclarationBuilder builder) async {
    builder.declareInType(DeclarationCode.fromParts(['String x() => "OK";']));
  }
}

macro class DeclareY implements LibraryTypesMacro  {
  const DeclareY();

  @override
  Future<void> buildTypesForLibrary(
      _, TypeBuilder builder) async {
    builder.declareType('Y', DeclarationCode.fromParts(['class Y { int get x => 3; Y y() => y(); }']));
  }
}
