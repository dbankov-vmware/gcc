<<<<<<< HEAD
// REQUIRED_ARGS: -de
=======
/*
REQUIRED_ARGS: -de
TEST_OUTPUT:
---
---
*/
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
deprecated("A deprecated class") {
class DepClass
{
}
}

class NewClass
{
}

void main()
{
    // test that a symbol (which is not likely to be deprecated)
    // is not depercated
    static assert(!__traits(isDeprecated, int));
    // check that a class marked deprecated "isDeprecated"
    static assert(__traits(isDeprecated, DepClass));
    // check that a class not marked deprecated is not deprecated
    static assert(!__traits(isDeprecated, NewClass));
    // Check for expressions (18617)
    static assert(__traits(isDeprecated, { scope foo = new DepClass; }));
}
