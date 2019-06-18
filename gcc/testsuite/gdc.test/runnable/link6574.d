// PERMUTE_ARGS:
// EXTRA_FILES: imports/testmangle.d
/*
TEST_OUTPUT:
---
_D7imports10testmangle12detectMangleFPSQBlQBg6DetectZQq
_D7imports10testmangle__T10DetectTmplTiZQpFNaNbNiNfZv
true
false
---
*/
module link6574;

import imports.testmangle;

enum Method { A, B, }

@safe @nogc pure nothrow:

enum FZi = "FNaNbNiNfZi"; // pure nothrow @nogc @safe

int foo(Method method = Method.A)()
{
<<<<<<< HEAD
    static assert(foo.mangleof == "_D8link6574"~tl!"28"~"__T3fooVE"~id!("8link6574","Qs")~"6Methodi0Z"~id!("3foo","Qs")~"FZi");
=======
    static assert(foo.mangleof == "_D8link6574"~tl!"28"~"__T3fooVE"~id!("8link6574","Qs")~"6Methodi0Z"~id!("3foo","Qs")~FZi);
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
    return 10 * foo!method();
}
int foo(Method method : Method.A)()
{
<<<<<<< HEAD
    static assert(foo.mangleof == "_D8link6574"~tl!"29"~"__T3fooHVE"~id!("8link6574","Qt")~"6Methodi0Z"~id!("3foo","Qt")~"FZi");
=======
    static assert(foo.mangleof == "_D8link6574"~tl!"29"~"__T3fooHVE"~id!("8link6574","Qt")~"6Methodi0Z"~id!("3foo","Qt")~FZi);
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
    return 2;
}
int foo(Method method : Method.B)()
{
    static assert(0);
    return 3;
}

int bar(Method method = Method.B)()
{
<<<<<<< HEAD
    static assert(bar.mangleof == "_D8link6574"~tl!"28"~"__T3barVE"~id!("8link6574","Qs")~"6Methodi1Z"~id!("3bar","Qs")~"FZi");
=======
    static assert(bar.mangleof == "_D8link6574"~tl!"28"~"__T3barVE"~id!("8link6574","Qs")~"6Methodi1Z"~id!("3bar","Qs")~FZi);
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
    return 10 * bar!method();
}
int bar(Method method : Method.A)()
{
    static assert(0);
    return 2;
}
int bar(Method method : Method.B)()
{
<<<<<<< HEAD
    static assert(bar.mangleof == "_D8link6574"~tl!"29"~"__T3barHVE"~id!("8link6574","Qt")~"6Methodi1Z"~id!("3bar","Qt")~"FZi");
=======
    static assert(bar.mangleof == "_D8link6574"~tl!"29"~"__T3barHVE"~id!("8link6574","Qt")~"6Methodi1Z"~id!("3bar","Qt")~FZi);
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
    return 3;
}

void main()
{
    assert(foo!() == 10 * 2);
    assert(foo() == 10 * 2);

    assert(bar!() == 10 * 3);
    assert(bar() == 10 * 3);
}
