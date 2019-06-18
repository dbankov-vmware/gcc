/*
<<<<<<< HEAD
REQUIRED_ARGS: -de
=======
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
TEST_OUTPUT:
---
fail_compilation/test11176.d(12): Error: `b.ptr` cannot be used in `@safe` code, use `&b[0]` instead
fail_compilation/test11176.d(16): Error: `b.ptr` cannot be used in `@safe` code, use `&b[0]` instead
---
*/

// https://issues.dlang.org/show_bug.cgi?id=11176

@safe ubyte oops(ubyte[] b) {
    return *b.ptr;
}

@safe ubyte oops(ubyte[3] b) {
    return *b.ptr;
}

