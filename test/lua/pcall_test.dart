import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  test('', () async {
    var state = HydroState();
    loadBuiltins(hydroState: state, builtins: [BuiltinLib.base]);

    List<String> outLines = [];

    state.context!.env["print"] = (List<dynamic> args) {
      outLines.add(args
          .map((a) => Context.luaToString(a, hydroState: state).toString())
          .join("\t"));
      return [];
    };

    List<String> expectedOutLines = ["ayy", "false\tmd", "69", "true	420"];

    var res = await state.doFile("test/lua/pcall.hc");

    if (!res.success) {
      print(res.values);
    }

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  }, tags: "lua");
}
