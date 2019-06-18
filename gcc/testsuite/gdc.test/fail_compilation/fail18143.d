/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail18143.d(20): Error: variable `fail18143.S.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(21): Error: variable `fail18143.S.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(25): Error: variable `fail18143.S.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(26): Error: variable `fail18143.S.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(35): Error: variable `fail18143.C.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(36): Error: variable `fail18143.C.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(40): Error: variable `fail18143.C.a` cannot modify parameter `this` in contract
fail_compilation/fail18143.d(41): Error: variable `fail18143.C.a` cannot modify parameter `this` in contract
=======
fail_compilation/fail18143.d(20): Error: variable `fail18143.S.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(21): Error: variable `fail18143.S.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(25): Error: variable `fail18143.S.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(26): Error: variable `fail18143.S.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(35): Error: variable `fail18143.C.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(36): Error: variable `fail18143.C.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(40): Error: variable `fail18143.C.a` cannot modify parameter 'this' in contract
fail_compilation/fail18143.d(41): Error: variable `fail18143.C.a` cannot modify parameter 'this' in contract
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

struct S
{
    int a;

    this(int n)
    in { a = n; }   // error, modifying this.a in contract
    out { a = n; }  // error, modifying this.a in contract
    do { }

    void foo(int n)
    in { a = n; }   // error, modifying this.a in contract
    out { a = n; }  // error, modifying this.a in contract
    do { }
}

class C
{
    int a;

    this(int n)
    in { a = n; }   // error, modifying this.a in contract
    out { a = n; }  // error, modifying this.a in contract
    do { }

    void foo(int n)
    in { a = n; }   // error, modifying this.a in contract
    out { a = n; }  // error, modifying this.a in contract
    do { }
}
