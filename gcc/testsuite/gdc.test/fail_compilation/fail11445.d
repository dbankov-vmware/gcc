/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail11445.d(11): Error: incompatible types for ((a) + (b)): both operands are of type 'double[string]'
=======
fail_compilation/fail11445.d(11): Error: incompatible types for `(a) + (b)`: both operands are of type `double[string]`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

void main() {
  double[string] a = [ "foo" : 22.2 ];
  double[string] b = [ "bar" : 22.2 ];
  auto c = a + b;
}
