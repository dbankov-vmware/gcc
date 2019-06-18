// EXTRA_FILES: imports/test15785.d
/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/test15785.d(16): Error: no property `foo` for type `imports.test15785.Base`, did you mean `imports.test15785.Base.foo`?
=======
fail_compilation/test15785.d(16): Error: no property `foo` for type `imports.test15785.Base`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
fail_compilation/test15785.d(17): Error: undefined identifier `bar`
---
*/

import imports.test15785;

class Derived : Base
{
    void test()
    {
        super.foo();
        bar();
    }
}
