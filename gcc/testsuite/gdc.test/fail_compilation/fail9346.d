/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail9346.d(26): Error: struct fail9346.S is not copyable because it is annotated with `@disable`
fail_compilation/fail9346.d(27): Error: struct fail9346.S is not copyable because it is annotated with `@disable`
=======
fail_compilation/fail9346.d(26): Error: struct `fail9346.S` is not copyable because it is annotated with `@disable`
fail_compilation/fail9346.d(27): Error: struct `fail9346.S` is not copyable because it is annotated with `@disable`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

struct S
{
    @disable this(this);
}
struct SS1
{
    S s;
}
struct SS2
{
    S s;
    this(this){}
}

void main()
{
    S s;
    SS1 ss1 = SS1(s);
    SS2 ss2 = SS2(s);
}
