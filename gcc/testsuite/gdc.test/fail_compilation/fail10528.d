/*
EXTRA_FILES: imports/a10528.d
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail10528.d(19): Error: undefined identifier `a`
fail_compilation/fail10528.d(20): Error: undefined identifier `a` in module `a10528`, did you mean variable `a`?
fail_compilation/fail10528.d(22): Error: undefined identifier `b`
fail_compilation/fail10528.d(23): Error: undefined identifier `b` in module `a10528`, did you mean enum member `b`?
fail_compilation/fail10528.d(25): Error: no property `c` for type `S`, did you mean `a10528.S.c`?
fail_compilation/fail10528.d(26): Error: no property `c` for type `S`, did you mean `a10528.S.c`?
fail_compilation/fail10528.d(28): Error: no property `d` for type `a10528.C`, did you mean `a10528.C.d`?
fail_compilation/fail10528.d(29): Error: no property `d` for type `a10528.C`, did you mean `a10528.C.d`?
=======
fail_compilation/fail10528.d(20): Error: undefined identifier `a`
fail_compilation/fail10528.d(21): Error: undefined identifier `a` in module `a10528`
fail_compilation/fail10528.d(23): Error: undefined identifier `b`
fail_compilation/fail10528.d(24): Error: undefined identifier `b` in module `a10528`
fail_compilation/fail10528.d(26): Error: no property `c` for type `a10528.S`
fail_compilation/fail10528.d(27): Error: no property `c` for type `a10528.S`
fail_compilation/fail10528.d(29): Error: no property `d` for type `a10528.C`
fail_compilation/fail10528.d(30): Error: no property `d` for type `a10528.C`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

import imports.a10528;

void main()
{
    auto a1 = a;
    auto a2 = imports.a10528.a;

    auto b1 = b;
    auto b2 = imports.a10528.b;

    auto c1 = S.c;
    with (S) auto c2 = c;

    auto d1 = C.d;
    with (C) auto d2 = d;
}
