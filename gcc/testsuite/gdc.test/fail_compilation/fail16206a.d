/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail16206a.d(12): Error: `bool` expected as third argument of `__traits(getOverloads)`, not `"Not a bool"` of type `string`
---
*/

struct S {
    static int foo()() { return 0; }
}
alias AliasSeq(T...) = T;
alias allFoos = AliasSeq!(__traits(getOverloads, S, "foo", "Not a bool"));
=======
fail_compilation/fail16206a.d(14): Error: `bool` expected as third argument of `__traits(getOverloads)`, not `"Not a bool"` of type `string`
---
*/

struct S
{
    static int foo()() { return 0; }
}

alias AliasSeq(T...) = T;
alias allFoos = AliasSeq!(__traits(getOverloads, S, "foo", "Not a bool"));
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
