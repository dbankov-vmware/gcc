/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail341.d(26): Error: struct fail341.S is not copyable because it is annotated with `@disable`
=======
fail_compilation/fail341.d(26): Error: struct `fail341.S` is not copyable because it is annotated with `@disable`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
fail_compilation/fail341.d(27): Error: function `fail341.foo` cannot be used because it is annotated with `@disable`
---
*/

struct T
{
    @disable this(this)
    {
    }
}

struct S
{
    T t;
}

@disable void foo() { }

void main()
{
    S s;
    auto t = s;
    foo();
}
