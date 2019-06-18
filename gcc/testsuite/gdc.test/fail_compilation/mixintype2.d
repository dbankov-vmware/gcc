
/* TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/mixintype2.d(10): Error: alias `mixintype2.Foo.T` recursive alias declaration
fail_compilation/mixintype2.d(16): Error: `mixin(0)` does not give a valid type
=======
fail_compilation/mixintype2.d(9): Error: alias `mixintype2.Foo.T` recursive alias declaration
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

struct Foo {
    alias T = mixin("T2");
}
alias T1 = mixin("Foo.T");
alias T2 = mixin("T1");
void func (T2 p) {}
<<<<<<< HEAD

enum mixin(0) a = 0;
=======
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
