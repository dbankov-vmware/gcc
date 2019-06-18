/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail18970.d(22): Error: no property `y` for type `S`
fail_compilation/fail18970.d(29): Error: no property `yyy` for type `S2`
=======
fail_compilation/fail18970.d(22): Error: no property `y` for type `fail18970.S`
fail_compilation/fail18970.d(29): Error: no property `yyy` for type `fail18970.S2`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

// https://issues.dlang.org/show_bug.cgi?id=18970

struct S
{
    auto opDispatch(string name)(int)
    {
        alias T = typeof(x);
        static assert(!is(T.U));
        return 0;
    }
}
void f()
{
    S().y(1);
}

struct S2
{
    this(int)
    {
        this.yyy;
    }

    auto opDispatch(string name)()
    {
        alias T = typeof(x);
        static if(is(T.U)) {}
    }
}
