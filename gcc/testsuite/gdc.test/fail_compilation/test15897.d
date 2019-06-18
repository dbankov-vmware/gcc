// REQUIRED_ARGS: -de
// EXTRA_FILES: imports/test15897.d
/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/test15897.d(18): Error: no property `create` for type `imports.test15897.Cat`
=======
fail_compilation/test15897.d(19): Error: no property `create` for type `imports.test15897.Cat`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/
module test15897;
import imports.test15897;

class Animal
{
    private void create() {}
}

void foo(Cat cat)
{
    cat.create();
}
