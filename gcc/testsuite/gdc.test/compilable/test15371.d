<<<<<<< HEAD
// EXTRA_FILES: imports/test15371.d
=======
/*
EXTRA_FILES: imports/test15371.d
TEST_OUTPUT:
---
---
*/

>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
import imports.test15371;

void main()
{
    A a;
    static assert(__traits(hasMember, A, "a"));
    static assert(__traits(getOverloads, A, "fun").length == 3);
    static assert(__traits(compiles, __traits(getMember, a, "a") ));
}
