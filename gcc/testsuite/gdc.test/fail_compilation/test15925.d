<<<<<<< HEAD
/* REQUIRED_ARGS:
PERMUTE_ARGS:
=======
/*
EXTRA_FILES: imports/imp15925.d
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
TEST_OUTPUT:
---
fail_compilation/test15925.d(18): Error: undefined identifier `X`
fail_compilation/test15925.d(18):        while evaluating: `static assert(X == 1)`
---
*/

mixin template Import()
{
    import imports.imp15925;
}

class Foo
{
    mixin Import!();
    static assert(X == 1);
}
