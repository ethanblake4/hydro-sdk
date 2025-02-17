import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo({int bar,int baz,int qux});
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
                  annotations: [],
                  typeArguments: [],
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
              ),
              optionalParameters: [],
              positionalParameters: [],
              namedParameters: [
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "bar",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                ),
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "baz",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                ),
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "qux",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        ),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo({int bar,int? baz,int qux});
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        SwidiClass(
          name: "IconData",
          libraryScopePrefix: SwidiLibraryScopePrefix.empty,
          staticMethods: [],
          methods: [
            SwidiFunctionDeclaration(
              shortHandOverride: SwidiConst.fromSwidiEmptyConst(
                swidiEmptyConst: SwidiEmptyConst(),
              ),
              typeFormals: [],
              name: "foo",
              returnType: SwidiType.fromSwidiInterface(
                swidiInterface: SwidiInterface(
                  annotations: [],
                  typeArguments: [],
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
              ),
              optionalParameters: [],
              positionalParameters: [],
              namedParameters: [
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "bar",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                ),
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "baz",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int?",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.question,
                      ),
                    ),
                  ),
                ),
                SwidiFunctionDeclarationNamedParameter(
                  declaration: SwidiDeclaration(
                    defaultConstValue: SwidiConst.fromSwidiEmptyConst(
                      swidiEmptyConst: SwidiEmptyConst(),
                    ),
                    name: "qux",
                    type: SwidiType.fromSwidiInterface(
                      swidiInterface: SwidiInterface(
                        annotations: [],
                        typeArguments: [],
                        name: "int",
                        libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                        referenceDeclarationPrefix:
                            SwidiReferenceDeclarationPrefix.empty,
                        nullabilitySuffix: SwidiNullabilitySuffix.none,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
          shortHandOverride: SwidiConst.fromSwidiEmptyConst(
            swidiEmptyConst: SwidiEmptyConst(),
          ),
        ),
      ],
    );
  }, tags: "swid");
}
