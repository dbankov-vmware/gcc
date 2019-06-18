/*
EXTRA_FILES: imports/a10169.d
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/diag10169.d(11): Error: no property `x` for type `B`, did you mean `imports.a10169.B.x`?
=======
fail_compilation/diag10169.d(12): Error: no property `x` for type `imports.a10169.B`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/
import imports.a10169;

void main()
{
    auto a = B.init.x;
}
