// https://issues.dlang.org/show_bug.cgi?id=18719

<<<<<<< HEAD
// REQUIRED_ARGS:
/*
TEST_OUTPUT:
---
fail_compilation/fail18719.d(30): Error: immutable field `x` initialized multiple times
=======
/*
TEST_OUTPUT:
---
fail_compilation/fail18719.d(29): Error: immutable field `x` initialized multiple times
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
       Previous initialization is here.
---
*/

struct S
{
    int x = -1;
    this(int y) immutable
    {
        x = y;
<<<<<<< HEAD
        import std.stdio;
        writeln("Ctor called with ", y);
=======
        import core.stdc.stdio;
        printf("Ctor called with %d\n", y);
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
    }
    void opAssign(int) immutable;
}

class C
{
    S x;
    this() immutable
    {
        this(42); /* Initializes x. */
        x = 13; /* Breaking immutable, or ok? */
    }
    this(int x) immutable
    {
        this.x = x;
    }
}

void main()
{
    new immutable C;
}
