/*
TEST_OUTPUT:
---
<<<<<<< HEAD
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
=======
fail_compilation/fail47.d(8): Error: variable `fail47._foo` is aliased to a function
>>>>>>> 3ebd2877d6d... Import dmd v2.094.0: dmd 3a55c54a8, druntime 67958c0f, phobos f85ca8dbe
---
*/
void foo() {}
int _foo;
alias _foo foo;

void main()
{
    foo = 1;
}

