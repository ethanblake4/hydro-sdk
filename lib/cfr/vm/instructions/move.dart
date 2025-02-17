import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void move({required Frame frame, required int A, required int B}) {
  frame.SR(A, frame.GR(B));
}
