/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/cppmangle.d(10): Error: invalid zero length C++ namespace
fail_compilation/cppmangle.d(14): Error: expected valid identifier for C++ namespace but got `0num`
fail_compilation/cppmangle.d(18): Error: string expected following `,` for C++ namespace, not `)`
=======
fail_compilation/cppmangle.d(11): Error: expected valid identifer for C++ namespace but got ``
fail_compilation/cppmangle.d(15): Error: expected valid identifer for C++ namespace but got `0num`
fail_compilation/cppmangle.d(19): Error: compile time string constant (or tuple) expected, not `2`
fail_compilation/cppmangle.d(23): Error: expected valid identifer for C++ namespace but got `invalid@namespace`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

extern(C++, "")
{
}

extern(C++, "0num")
{
}

extern(C++, 1+1)
{
}

extern(C++, "invalid@namespace")
{
}
