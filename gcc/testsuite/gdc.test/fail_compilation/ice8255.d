/*
REQUIRED_ARGS: -preview=rvaluerefparam
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/ice8255.d(11): Error: function `ice8255.F!(G).F.f(ref G _param_0)` is not callable using argument types `(G)`
fail_compilation/ice8255.d(11):        cannot pass rvalue argument `G()` of type `G` to parameter `ref G _param_0`
fail_compilation/ice8255.d(11):        while evaluating `pragma(msg, F().f(G()))`
=======
fail_compilation/ice8255.d(12): Error: Cannot pass argument `F().f((G()))` to `pragma msg` because it is `void`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/


struct G {}
struct F(T) { void f(ref T) {} }
pragma(msg, F!G().f(G.init));
