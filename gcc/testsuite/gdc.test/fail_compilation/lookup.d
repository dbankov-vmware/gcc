/*
EXTRA_FILES: imports/imp1.d imports/imp2.d
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/lookup.d(23): Error: no property `X` for type `lookup.B`, did you mean `imports.imp2.X`?
fail_compilation/lookup.d(23):        while evaluating: `static assert((B).X == 0)`
+fail_compilation/lookup.d(24): Error: no property `Y` for type `lookup.B`, did you mean `imports.imp2.Y`?
fail_compilation/lookup.d(24):        while evaluating: `static assert((B).Y == 2)`
=======
fail_compilation/lookup.d(24): Error: no property `X` for type `lookup.B`, did you mean `imports.imp2.X`?
fail_compilation/lookup.d(24):        while evaluating: `static assert((B).X == 0)`
fail_compilation/lookup.d(25): Error: no property `Y` for type `lookup.B`, did you mean `imports.imp2.Y`?
fail_compilation/lookup.d(25):        while evaluating: `static assert((B).Y == 2)`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

import imports.imp1;

enum X = 0;

class B
{
    import imports.imp2;
    static assert(X == 0);
    static assert(Y == 2);
}
class C : B
{
    static assert(B.X == 0);
    static assert(B.Y == 2);

    static assert(X == 0);
    static assert(Y == 1);
}
