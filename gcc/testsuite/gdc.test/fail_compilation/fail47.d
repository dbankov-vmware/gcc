/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail47.d(8): Error: variable `fail47._foo` is aliased to a function
=======
fail_compilation/fail47.d(13): Error: variable `fail47._foo` is aliased to a function
fail_compilation/fail47.d(13): Error: variable `fail47._foo` is aliased to a function
fail_compilation/fail47.d(13): Error: variable `fail47._foo` is aliased to a function
fail_compilation/fail47.d(18): Error: none of the overloads of `foo` are callable using argument types `(int)`, candidates are:
fail_compilation/fail47.d(12):        `fail47.foo()`
fail_compilation/fail47.d(13): Error: variable `fail47._foo` is aliased to a function
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/
void foo() {}
int _foo;
alias _foo foo;

void main()
{
    foo = 1;
}

