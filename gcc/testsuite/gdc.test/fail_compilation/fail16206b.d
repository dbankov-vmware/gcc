/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail16206b.d(12): Error: expected 2 arguments for `hasMember` but had 3
---
*/

struct S {
    static int foo()() { return 0; }
}
alias AliasSeq(T...) = T;
alias allFoos = AliasSeq!(__traits(hasMember, S, "foo", true));
=======
fail_compilation/fail16206b.d(14): Error: expected 2 arguments for `hasMember` but had 3
---
*/

struct S
{
    static int foo()() { return 0; }
}

alias AliasSeq(T...) = T;
alias allFoos = AliasSeq!(__traits(hasMember, S, "foo", true));
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
