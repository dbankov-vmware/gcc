/*
TEST_OUTPUT:
---
fail_compilation/fail10968.d(39): Error: `pure` function `fail10968.bar` cannot call impure function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(39): Error: `@safe` function `fail10968.bar` cannot call `@system` function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(27):        `fail10968.SA.__postblit` is declared here
fail_compilation/fail10968.d(40): Error: `pure` function `fail10968.bar` cannot call impure function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(40): Error: `@safe` function `fail10968.bar` cannot call `@system` function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(27):        `fail10968.SA.__postblit` is declared here
fail_compilation/fail10968.d(41): Error: `pure` function `fail10968.bar` cannot call impure function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(41): Error: `@safe` function `fail10968.bar` cannot call `@system` function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(27):        `fail10968.SA.__postblit` is declared here
fail_compilation/fail10968.d(44): Error: `pure` function `fail10968.bar` cannot call impure function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(44): Error: `@safe` function `fail10968.bar` cannot call `@system` function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(27):        `fail10968.SA.__postblit` is declared here
fail_compilation/fail10968.d(45): Error: `pure` function `fail10968.bar` cannot call impure function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(45): Error: `@safe` function `fail10968.bar` cannot call `@system` function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(27):        `fail10968.SA.__postblit` is declared here
fail_compilation/fail10968.d(46): Error: `pure` function `fail10968.bar` cannot call impure function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(46): Error: `@safe` function `fail10968.bar` cannot call `@system` function `fail10968.SA.__postblit`
fail_compilation/fail10968.d(27):        `fail10968.SA.__postblit` is declared here
---
*/

struct SA
{
    this(this)
    {
        throw new Exception("BOOM!");
    }
}

void bar() pure @safe
{
    SA    ss;
    SA[1] sa;

    // TOKassign
    ss = ss;
    sa = ss;
    sa = sa;

    // TOKconstruct
    SA    ss2 = ss;
    SA[1] sa2 = ss;
    SA[1] sa3 = sa;
}

/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail10968.d(66): Error: struct fail10968.SD is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(67): Error: struct fail10968.SD is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(68): Error: struct fail10968.SD is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(71): Error: struct fail10968.SD is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(72): Error: struct fail10968.SD is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(73): Error: struct fail10968.SD is not copyable because it is annotated with `@disable`
=======
fail_compilation/fail10968.d(72): Error: struct `fail10968.SD` is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(73): Error: struct `fail10968.SD` is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(74): Error: struct `fail10968.SD` is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(77): Error: struct `fail10968.SD` is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(78): Error: struct `fail10968.SD` is not copyable because it is annotated with `@disable`
fail_compilation/fail10968.d(79): Error: struct `fail10968.SD` is not copyable because it is annotated with `@disable`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

struct SD
{
    this(this) @disable;
}

void baz()
{
    SD    ss;
    SD[1] sa;

    // TOKassign
    ss = ss;
    sa = ss;
    sa = sa;

    // TOKconstruct
    SD    ss2 = ss;
    SD[1] sa2 = ss;
    SD[1] sa3 = sa;
}
